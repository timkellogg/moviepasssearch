Rails.application.routes.draw do
  root to: 'theaters#search'

  post '/theaters', to: 'theaters#index'
end
