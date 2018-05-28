Rails.application.routes.draw do
  devise_for :users, path: "karjjq&erica&liti&dragic"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "posts#index"

  resources :posts, only: [:index, :show]
  resources :technotes, only: [:index, :show]
  resources :portfolios, only: [:index, :show]

  namespace :author do
    resources :posts, path: "vita&shela&Karjjq"
    resources :technotes, path: "erica&liti&rebecca"
    resources :portfolios, path: "rebecca&vita&erica"
    root "posts#index"
  end

end
