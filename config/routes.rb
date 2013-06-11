MentorConnect::Application.routes.draw do

  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  resources :users, :only => [:show, :index, :edit] do 
    resources :mentorings, :path => "mentoring"
    resources :learning
  end 

  root :to => "home#index"
end
