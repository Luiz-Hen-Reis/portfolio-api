Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :institutions, only: :index
      resources :formations, only: :index
      resources :tecnologies, only: :index
      resources :projects, only: :index
    end
  end
end
