Rails.application.routes.draw do
  devise_for :users
  root to: 'lodges#index'

  resources :lodges
  get '/reserve',               to: 'lodges#reserve'
  post '/reserve',               to: 'lodges#reserve_create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
