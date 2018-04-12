Rails.application.routes.draw do
  get 'portfolio/index'
  resources :tv_dbs
  root 'tv_dbs#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
