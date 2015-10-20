Rails.application.routes.draw do
  resources :charges
  root to: 'pages#index'
end
