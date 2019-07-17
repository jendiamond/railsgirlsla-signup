Rails.application.routes.draw do
  get 'users/show'
  get 'static/about'
  get 'static/faq'
  root 'static#home'
end

