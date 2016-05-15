Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons
  resources :topics
  resources :announcements
  resources :assignments
  root to: 'homes#index'
end
