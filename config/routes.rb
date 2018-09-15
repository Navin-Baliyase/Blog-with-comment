Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/edit'
  get 'comments/show'
  get 'comments/destroy'
  get 'comments/update'
  #get 'articles/index'
  #get 'articles/new'
  #get 'articles/show'
  #get 'articles/update'
  #get 'articles/destroy'
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
