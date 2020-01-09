Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :workout_exercises
    end
  end
  namespace :api do
    namespace :v1 do
      resources :exercises
    end
  end
  namespace :api do
    namespace :v1 do
      resources :workouts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users

      resources :users do 
        resources :workouts
      end

    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
