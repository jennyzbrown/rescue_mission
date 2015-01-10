Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'freshie', to: 'questions#freshie'
  resources :questions do
    resources :comments
  end

end
