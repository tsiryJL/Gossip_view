Rails.application.routes.draw do

  get 'message/:user_entry',  to: 'message#show'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team', do: 'static_pages#team'
  get '/static_pages/home', do: 'static_pages#home'
  get '/welcome/:id', to: 'static_pages#name'
  get '/gossip/:id', to: 'static_pages#gossip'
  get '/user/:id', to: 'static_pages#user'
end
