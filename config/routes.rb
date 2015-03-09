Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    resources :stocks
  end

  get '/*path' => 'home#index'
end
