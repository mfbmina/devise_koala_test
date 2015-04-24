FacebookTest::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :posts, only: [:new, :create]

  root "posts#new"
end
