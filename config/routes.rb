AEBD_test_00::Application.routes.draw do
  authenticated :user do
    root :to => "dashboard#show"
  end
  root :to => "home#index"
 # devise_for :users
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users do
    resource :dashboard, :controller => :dashboard, :only => [:show]
    resources :profiles
  end
end