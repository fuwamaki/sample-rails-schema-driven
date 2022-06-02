Rails.application.routes.draw do
  get '/user' => 'sample#show'
  get '/users' => 'sample#index'
  post '/user' => 'sample#create'
end
