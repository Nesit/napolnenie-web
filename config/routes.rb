NapolnenieWeb::Application.routes.draw do
  # Admin panel
  namespace :admin do
    resources :static_pages do
      post :add_banner, :on => :collection
    end
  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :services, only: :show

  match "/reviews" => "reviews#show"
  match "/receive_requests" => "receive_requests#receive", via: :post
  match "/receive_message" => "receive_requests#receive_message", via: :post
  match "/:permalink" => "static_pages#show"
  root :to => 'main#index'
end
