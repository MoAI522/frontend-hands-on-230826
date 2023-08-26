Rails.application.routes.draw do
  get '/book', to: 'book#index'
end
