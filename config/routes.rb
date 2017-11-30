Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#show", page: "about"
  resources :neighborhoods do
    resources :posts
  end
  resources :pages
end
