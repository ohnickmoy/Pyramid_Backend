class Api::V1::WorkoutsController < ApplicationController
    def index
        workouts = Workout.all
        render json: WorkoutSerializer.new(workouts)
    end

    def show
        workout = Workout.find_by(id: params[:id])
        render json: WorkoutSerializer.new(workout)
    end

    def saveWorkout
        permittedParams = workout_params
        # byebug
        permittedParams[:exercises].map do |workoutExercise|
            # byebug
            updatedWorkoutExercise = WorkoutExercise.find(workoutExercise[:id])
            updatedWorkoutExercise.setInfo = workoutExercise[:setInfo]
            updatedWorkoutExercise.save
        end
        workout = Workout.find(permittedParams[:id])
        render json: WorkoutSerializer.new(workout)
    end

    private

    def workout_params
        params.require(:selectedWorkout).permit(:id, exercises: [:id, :weight, :totalReps, setInfo:[]])
    end
end
