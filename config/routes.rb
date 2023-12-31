Rails.application.routes.draw do
  get '/book', to: 'book#index'
  post '/book', to: 'book#create'
  get '/trainers', to: 'trainers#index'
  get '/trainers/:id', to: 'trainers#show'
  post '/trainer', to: 'trainers#create'
  post '/monster', to: 'monsters#create'
end
