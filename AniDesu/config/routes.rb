Rails.application.routes.draw do
  get 'main_page/index'
  
  resources :amv
  
  resources :articles
  
  root 'main_page#index'
end
