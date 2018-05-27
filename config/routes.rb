Rails.application.routes.draw do
  devise_for :users, path: "erica&rebecca"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 前台首頁網址
  root "posts#index"

  # posts 前台路由
  resources :posts, only: [:index, :show]

  namespace :author do
    # posts 後台路由
    resources :posts, path: "karjjq&liti"
    # 後台首頁網址
    root "posts#index"
  end

end
