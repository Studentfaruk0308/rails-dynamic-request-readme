Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'about', to: "static#about"
  get 'posts/:id', to: 'posts#show'
end
