Rails.application.routes.draw do
  get 'users/show'
  get 'home/index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 
  
  
  devise_scope :user do
    root "home#index"
    get "user/:id", :to => "users#show"
    get "user/edit/:id", :to => "users/registrations#edit"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
end



