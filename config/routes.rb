Rails.application.routes.draw do

  resources :users, only: [:show, :create] do
  member do
    resources :category_preferences, only: [:create]
  end
end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
