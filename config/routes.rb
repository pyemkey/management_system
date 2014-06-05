Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, path: '/', path_names: 
    { sign_in: "sign-in", sign_up: "sign-up" } 

  resources :users do
    resources :work_experiences
    resources :educations
  end
  resources :details, only: [:edit, :update]
  resources :interests
end
