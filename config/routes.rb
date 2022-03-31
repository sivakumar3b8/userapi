Rails.application.routes.draw do
  resources :users
  get 'user_search/:q', to: 'users#user_search'
end



  # get 'user_search/:q', to: 'users#user_search'
