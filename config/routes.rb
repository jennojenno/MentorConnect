MentorConnect::Application.routes.draw do


  get "search/search"

  resources :learners


  resources :authentications
   match '/auth/:provider/callback' => 'authentications#create'


  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users, :only => [:show, :index, :edit] do 
    resources :mentorings, :path => "mentoring"
    resources :learning
    resources :messages
  end 
  resources :courses

  root :to => "home#index"
  get "home/map"
  #get "home/mentors", :path => "mentors", :controller => "home"

  match "/mentors" => "home#mentors", :as => :mentors
  match "/music" => "home#music", :as => :music
  match "/diy" => "home#diy", :as => :diy
  match '/search' => 'search#search', :as => 'search'

  match "/favorites" => "courses#favorites", :as => :favorites
  match "/:user_id/favorites" => "courses#userfavorites", :as => :user_favorites
  #match "/learners" => "home#learners", :as => :learners
  #match "/mentors/:category" => "home#mentors", :as => :mentors

end
