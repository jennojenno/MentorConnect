MentorConnect::Application.routes.draw do
  devise_for :users
  resources :users, :only => [:show, :index, :edit] do 
    resources :mentoring
    resources :learning
  end 

  root :to => "home#index"
end
