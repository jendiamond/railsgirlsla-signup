Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  get 'users/show'
  get 'static/about'
  get 'static/faq'
  root 'static#home'
end
