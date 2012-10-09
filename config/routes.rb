NapolnenieWeb::Application.routes.draw do
  # Admin panel
  namespace :admin do
    resources :static_pages do
      delete :destroy_slider_photo, :on => :collection
    end
  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  match "/reviews" => "reviews#show"
  root :to => 'main#index'
end
