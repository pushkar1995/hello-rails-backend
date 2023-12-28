Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  # root "posts#index"
  namespace :api, default:{format: :json} do
    namespace :v1 do
      resources :messages, only:[:index]
    end
  end
end