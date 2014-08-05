Rails.application.routes.draw do
  resources :curators do
    resources :collections
  end

  resources :artworks, only: [:new, :create, :search, :results, :show]

  root 'welcome#index'

  get '/search' => 'artworks#new'
  get '/results' => 'artworks#results'

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  get 'sessions/goodbye' => 'sessions#destroy'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'profiles' => 'profiles#index'
end
