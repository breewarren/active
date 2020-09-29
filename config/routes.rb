Rails.application.routes.draw do
  resources :recovery_logs
  resources :workout_logs
  resources :recoveries
  resources :workouts
  resources :assessments
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
