Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :words do
    resources :phrases
  end
  resources :categories
  root 'categories#index'
end
