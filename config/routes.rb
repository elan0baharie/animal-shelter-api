Rails.application.routes.draw do
  namespace :api, defaults:{ format: :json } do
    namespace :v1 do
      resources :animals

      get 'random' => 'animals#random'
    end
  end
end
