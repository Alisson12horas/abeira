Abeira::Application.routes.draw do

  resources :users
  resources :sessions
  resources :agendas
  resources :podcasts

  root :to => 'home#index'

  match '/signout', to: 'sessions#destroy', via: :delete
  match '/admin',   to: 'pages#admin'
  match '/fotos',   to: 'pages#fotos'
  match '/contato',   to: 'pages#contato'
  match '/oquee',   to: 'pages#oquee'
  match '/agenda',   to: 'agendas#index'
  match '/equipe',   to: 'pages#equipe'
  match '/enviar_email',    to: 'pages#enviar_email'

end