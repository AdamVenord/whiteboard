Rails.application.routes.draw do
  root 'static_boards#home'

  get '/about', to: 'static_boards#about'
  
  resources :boards
end
