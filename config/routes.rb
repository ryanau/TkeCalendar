Rails.application.routes.draw do
  resources :charges
  resources :pages
  root to: 'charges#new'
end
