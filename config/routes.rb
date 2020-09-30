Rails.application.routes.draw do

  root 'application#hello'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  resources :recovery_logs
  resources :workout_logs
  resources :recoveries
  resources :workouts
  resources :assessments
  resources :users
  resources :application
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
