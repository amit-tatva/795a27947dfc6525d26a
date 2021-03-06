Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users, only: [:index, :show, :create, :update, :destroy]
    get '/typeahead/:input', to: 'typeahead#show'
  end
end
