Rails.application.routes.draw do
  get 'calculator/index'
  get 'legacy/index'
  get 'partnership/index'
  get 'introduction/index'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"
end
