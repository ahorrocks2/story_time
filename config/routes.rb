Rails.application.routes.draw do
  resources :stories do
    resources :sentence
  end
end
