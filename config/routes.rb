Rails.application.routes.draw do
  get 'lessons/index'

  get 'lessons/new'

  get 'lessons/create'

  get 'lessons/show'

  get 'lessons/destroy'

  get 'topics/index'

  get 'topics/new'

  get 'topics/create'

  get 'topics/show'

  get 'topics/destroy'

  get 'classes/index'

  get 'classes/new'

  get 'classes/create'

  get 'classes/show'

  get 'classes/destroy'

  get 'announcements/index'

  get 'announcements/new'

  get 'announcements/create'

  get 'announcements/destroy'

  get 'announcements/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :homeworks
  root to: 'homes#index'
end
