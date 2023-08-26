Rails.application.routes.draw do
  get '/book', to: 'book#index'
  get '/trainers', to: 'trainers#index'
  post '/trainer', to: 'trainers#create'
end
