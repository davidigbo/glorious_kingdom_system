Rails.application.routes.draw do
  resources :posts

  get "description", to: "pages#description"
  get "who_we_are", to: "pages#who_we_are"
  get "mission", to: "pages#mission"
  get "vision", to: "pages#vision"
  get "culture", to: "pages#culture"
  get "core_values", to: "pages#core_values"

   root "pages#home"
end
