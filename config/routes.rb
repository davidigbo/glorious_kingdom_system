Rails.application.routes.draw do
  get "pages/core_values"
  get "pages/culture"
  get "pages/vision"
  get "pages/mission"
  get "pages/Who_we_are"
  get "pages/description"
   resources :posts
   root "posts#index"
end
