Rails.application.routes.draw do
  resources :notes
  resources :users
  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
