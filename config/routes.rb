Rails.application.routes.draw do
  get 'admins/index'
  mathjax 'mathjax'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics do
    resources :assignments
    resources :lessons do
      resources :assignments
    end
  end
  resources :announcements
  root to: 'homes#index'
  devise_scope :user do get "/sign_in" => "devise/sessions#new" end
  devise_scope :user do get "/sign_up" => "devise/registrations#new" end
  get '/about' => 'homes#about'
  get '/contact' => 'homes#contact'
  get '/admin' => 'admins#index'
  get '/about/edit' => 'admins#about'
  get '/contact/edit' => 'admins#contact'
  post '/about/edit' => 'admins#about_new'
  mount ActionCable.server => '/cable'

end
