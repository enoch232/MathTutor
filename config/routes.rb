Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lessons
  resources :topics
  resources :announcements
  resources :assignments
  root to: 'homes#index'
  get '/sign_in' => 'devise/sessions#new'
  get '/sign_up' => 'devise/registrations#new'
  devise_scope :user do get "/some/route" => "some_devise_controller" end
  get '/about' => 'homes#about'
  get '/contact' => 'homes#contact'

end
