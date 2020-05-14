Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/home", to: "home#index"
  match 'static/*path' => 'home#index', via: [:get, :post, :put, :patch, :delete]
end
