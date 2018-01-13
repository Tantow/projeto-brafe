Rails.application.routes.draw do
  get 'lojas/nova_loja', to: "stores#new", as: :new_store
  get 'lojas', to: "stores#index", as: :stores
  post 'lojas', to: "stores#create"
  delete 'lojas/:id', to: "stores#destroy", as: :destroy_store

  root to: "static_pages#index"
  get 'home', to: "static_pages#index", as: :home
  get 'sobre', to: "static_pages#sobre", as: :sobre
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
