NapolnenieWeb::Application.routes.draw do
  # Admin panel
  namespace :admin do
    resources :pages do
      delete :destroy_slider_photo, :on => :collection
    end
  end

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'main#index'
end
