Rails.application.routes.draw do

  root to: 'statique#home'

  get '/', to: 'statique#home'

  get 'post/new'
  get 'post/edit'
  get 'post/show'
  get 'comment/new'
  get 'comment/edit'
  get 'comment/show'
  get 'user/new'
  get 'user/edit'
  get 'user/show'
  get 'statique/home'

  get 'user', to: 'user#new'
  post 'user', to: 'user#create'
  #get 'user/:username', to: 'user#show', as: 'show'
  get '/confirm', to: 'user#confirm'

  
end
