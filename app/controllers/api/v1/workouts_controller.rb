class Api::V1::WorkoutsController < ApplicationController
    def index
        workouts = Workout.all
        render json: WorkoutSerializer.new(workouts)
    end

    def show
        workout = Workout.find_by(id: params[:id])
        render json: WorkoutSerializer.new(workout)
    end
end
