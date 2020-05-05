class Api::V1::UsersController < ApplicationController
    wrap_parameters :user, include: [:username, :password]

    def index
        users = User.all
        render json: UserSerializer.new(users)
    end

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        user = User.create(user_params)
        #byebug
        if user.save
            render json: UserSerializer.new(user), status: :ok
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def login
        byebug
    end

    def createWorkout
        data = workout_params
        user = User.find_by(id: params[:id])
        newWorkout = Workout.create
        newWorkout.user_id = params[:id]
        newWorkout.routine_type = data[:routine_type]
        newWorkout.workout_date = Time.now()
        newWorkout.save
        data[:exercises].map do |workoutExercise|
            exercise = Exercise.find_by(name: workoutExercise[:name])
            newWorkoutExercise = WorkoutExercise.create
            newWorkoutExercise.exercise_id = exercise.id
            newWorkoutExercise.workout_id = newWorkout.id
            newWorkoutExercise.tier = workoutExercise[:tier]
            newWorkoutExercise.weight = workoutExercise[:weight]
            newWorkoutExercise.reps = workoutExercise[:reps]
            newWorkoutExercise.numSets = workoutExercise[:numSets]
            newWorkoutExercise.setInfo = workoutExercise[:setInfo]
            newWorkoutExercise.save
        end
        render json: WorkoutSerializer.new(newWorkout)
    end

    private 

    def workout_params
        params.require(:nextWorkout).permit(:routine_type, :id, :workout_date, exercises: [:tier, :weight, :reps, :numSets, :totalReps, :name, setInfo: []])
    end

    def user_params
        #byebug
        params.require(:user).permit(:username, :password)
    end
end
 