Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  get 'static/about'
  get 'static/faq'
  root 'static#home'
  devise_for :users, controllers: { registrations: "users/registrations" }
end
