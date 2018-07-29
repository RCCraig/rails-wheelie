Rails.application.routes.draw do
  get 'profiles/show'
  resource :profile
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#front'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
