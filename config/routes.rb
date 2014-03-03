Tweeter::Application.routes.draw do
  devise_for :users
  root 'static_pages#tweeter'

  resources :users, only: [:index, :show]
  resources :tweets, only: [:create, :destroy]

  get '/about' => 'static_pages#sbout', as: :about
  get '/terms-of-sevice' => 'static_pages#tos', as: :terms_of_service
  get 'privacy-policy' => 'static_pages#privacy', as: :privacy_policy

end
