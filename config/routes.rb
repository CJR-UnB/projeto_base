Rails.application.routes.draw do
  get '/home' => 'static_pages#home'

  devise_for :users

  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    delete '/logout' => 'devise/sessions#destroy'
    root 'devise/sessions#new'
  end
end
