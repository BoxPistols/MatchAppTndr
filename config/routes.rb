Rails.application.routes.draw do
  devise_for :users
  # get 'top/index'
  root "top#index"

  resources :users, only: %i(show)

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # indexを追加する
  resources :users, only: %i(index show)

end
