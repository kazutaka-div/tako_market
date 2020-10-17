Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "items#index"
  resources :items
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  #以下の記述でrouthingが変更となる。users/registrations#newなど。
  #devise_for :users であると、devise/registrations#newなど。
  devise_scope :user do
    get 'address', to: 'users/registrations#new_adrress'
    post 'address', to: 'users/registrations#create_address'
  end
end
