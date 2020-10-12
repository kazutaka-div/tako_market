Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "items#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  #以下の記述でrouthingが変更となる。users/registrations#newなど。
  #devise_for :users であると、devise/registrations#newなど。
end
