Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get 'homes/about'=> "homes#about"
  resources :books
  resources :users, only: [:index,:show,:edit,:update]
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
