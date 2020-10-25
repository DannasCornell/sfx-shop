Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  get "dashboard", to: "dashboards#dashboard"
  post "cart_order", to: "carts#cart_order"
  get "cart", to: "carts#cart"
  post "remove_item", to: "carts#delete_item"
  post "checkout", to: "orders#checkout"
  get "destroy_order", to: "orders#destroy"
  get "destroy_order_dashboard", to: "orders#destroy_from_dashboard"
  get "destroy_cart", to: "carts#destroy_cart"
  get "admin", to: "administrator#admin"
  resources :sfx_packs, only: :show
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
