Rails.application.routes.draw do
  get 'pages/index'

  get 'pages/cart'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/charges', to: 'charges#new'
  post '/charges', to: 'charges#create'
end
