Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'main#index'
  get 'main/index'
  get 'main/show'
  get 'main/clients'
  get 'main/contacts'
  get 'orders', to: 'main#orders'
  get 'profile/:id', to: 'main#influencer_profile'
  get 'company/:id', to: 'main#company_profile'
  get 'main/add_cards'
  get 'main/add_clients'
  get 'main/sort_order'
  get 'main/add_orders'
  get 'main/search'
  get 'main/platform_card'
  get 'main/curators'
  post 'main/create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
