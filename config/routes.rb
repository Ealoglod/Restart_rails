Rails.application.routes.draw do

  get '/feeds' => 'home#index'
  get '/feeds/new' => 'home#new'
  post '/feeds' => 'home#create'
  delete '/feeds/:id' => 'home#destroy'
  get '/feeds/:id' => 'home#update'
  post '/feeds/:id' => 'home#done'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

