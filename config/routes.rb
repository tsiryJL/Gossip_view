Rails.application.routes.draw do
  get 'message/:user_entry',  to: 'message#show'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team', do: 'static_pages#team'
  get '/static_pages/index', do: 'static_pages#index'
  get '/static_pages/welcome/:id', to: 'static_pages#name'
  get '/static_pages/gossip/:id', to: 'static_pages#gossip'
  get '/static_pages/user/:id', to: 'static_pages#user'
    resources :gossips
end
