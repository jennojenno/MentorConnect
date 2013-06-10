MentorConnect::Application.routes.draw do
  resources :mentors


  devise_for :users

  root :to => "home#index"
end
