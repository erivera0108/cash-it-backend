Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, :bids, :items
    end
    
    post'rails/active_storage/direct_uploads', to: 'direct_uploads#create'

  end
end
