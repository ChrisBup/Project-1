Rails.application.routes.draw do
  resources :curators do
    resources :collections
  end
end
