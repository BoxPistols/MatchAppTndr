Rails.application.routes.draw do
  devise_for :users
  # get 'top/index'
  root "top#index"


  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
