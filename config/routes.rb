Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/api', to: 'welcome#api'
  resources :devices do
    resources :device_data
  end
end
