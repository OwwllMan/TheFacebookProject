Rails.application.routes.draw do
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
