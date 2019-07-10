Rails.application.routes.draw do
  root to: "words#index"
  resources :words
  get 'test', to: "test#run"
end
