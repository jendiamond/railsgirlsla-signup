Rails.application.routes.draw do
  get 'static/about'
  root 'static#faq'
end

