Rails.application.routes.draw do
  get 'static_pages/about'
  root 'static#faq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
