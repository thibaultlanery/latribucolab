Rails.application.routes.draw do

  mount ForestLiana::Engine => '/forest'

  resources :users, only: [:show, :create]
  resources :category_preferences, only: [:create]


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #dans la home les categories s'affichent
  #le user instancié et non crée peut selectionner les categories

  #pour voter, il inscrit son mail et cela instanci un user et rattache ses préférences.
  # - modifier la création du user en créeant en même temps les category preferences

end
