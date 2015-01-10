questions_path = '/questions'

Rails.application.routes.draw do
resources :shirts, only: [:new, :create, :show]
get '/homepage' => 'home#new', as: :home


includion {within: %w{red green black}}