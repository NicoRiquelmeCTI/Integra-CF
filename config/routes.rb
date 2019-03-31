Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
    root to: "welcome#index"
  resources :presentations
  resources :expeditions
  resources :invitations
  resources :congresses
  resources :expositors
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
