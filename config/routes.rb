MentorConnect::Application.routes.draw do
  get "mentorings/index"

  get "mentorings/create"

  get "mentorings/new"

  get "mentorings/edit"

  get "mentorings/show"

  get "mentorings/update"

  get "mentorings/destroy"

  devise_for :users
  resources :users, :only => [:show, :index, :edit] do 
    resources :mentorings, :path => "mentoring"
    resources :learning
  end 

  root :to => "home#index"
end
