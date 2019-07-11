Rails.application.routes.draw do
  get 'static/about'
  get 'static/faq'
  root 'static#home'
end

