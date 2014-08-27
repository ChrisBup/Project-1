Rails.application.routes.draw do
  resources :curators do
    resources :collections do
      resources :artworks
    end
  end

  root 'welcome#index'

  get '/search', to: 'artworks#new'
  get '/results', to: 'artworks#results'

  get 'sessions/new', to: 'sessions#new', as: 'log_in'
  post 'sessions', to: 'sessions#create'
  get 'sessions/goodbye', to: 'sessions#destroy'
  get 'session/demo', to: 'sessions#demo'
  delete 'sessions', to: 'sessions#destroy', as: 'log_out'

  get 'profiles', to: 'profiles#index'
end
