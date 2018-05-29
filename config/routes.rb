Rails.application.routes.draw do
  devise_for :users, path: "karjjq&erica&liti&dragic"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "posts#index"

  resources :posts, only: [:index, :show]
  resources :technotes, only: [:index, :show]
  resources :portfolios, only: [:index, :show]

  namespace :author, path: "erica&rebecca&liti&vita" do
    resources :posts
    resources :technotes
    resources :portfolios
    root "posts#index"
  end

end
