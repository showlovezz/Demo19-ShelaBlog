Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 前台路由
  root "posts#index"

  # 後台路由
  namespace :author do
    resources :posts
    root "posts#index"
  end

end
