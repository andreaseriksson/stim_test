Rails.application.routes.draw do
  get 'increment', to: 'home#increment'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
