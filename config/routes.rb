Rails.application.routes.draw do
  get 'groups/new'
  resources :groups 
  resource :profile
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#front'
  
end
