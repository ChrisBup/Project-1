Rails.application.routes.draw do
  resources :curators do
    resources :collections
  end

  resources :artworks, only: [:new, :create, :search, :results, :show]

  get '/search' => 'artworks#new' # Where my form is
  get '/results' => 'artworks#results' # Where my form sends me; where my form results are

  root 'curators#index'

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  get 'sessions/goodbye' => 'sessions#destroy'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'profiles' => 'profiles#index'
end
