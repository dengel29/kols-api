Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#campaigns'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :campaigns, only: [ :index, :show ]
    end
  end
end
