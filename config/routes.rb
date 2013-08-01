Abeira::Application.routes.draw do

  resources :agendas
  resources :podcasts

  root :to => 'home#index'

  match '/admin',   to: 'pages#admin'
  match '/fotos',   to: 'pages#fotos'
  match '/contato',   to: 'pages#contato'
  match '/oquee',   to: 'pages#oquee'
  match '/agenda',   to: 'agendas#index'
  match '/equipe',   to: 'pages#equipe'

end