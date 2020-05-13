class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username
  #has_many :workouts
  # attributes :workouts do |object|
  #   workouts = Workout.all.select do |workout|
  #     workout.user_id === object.id
  #   end

  #   workouts = workouts.map do |workout|
  #     workoutExercises = WorkoutExercise.all.select do |workoutExercise|
  #       workout.id === workoutExercise.workout_id
  #     end
  #     workoutExercises = workoutExercises.sort_by {|workoutExercise| workoutExercise.tier}
      
  #     workoutExercises = workoutExercises.map do |workoutExercise|
  #       exercise = Exercise.find(workoutExercise.exercise_id)

  #       workoutExercise = {
  #         id: workoutExercise.id, 
  #         exercise_id: workoutExercise.exercise_id,
  #         workout_id: workoutExercise.workout_id,
  #         name: exercise.name,
  #         tier: workoutExercise.tier,
  #         weight: workoutExercise.weight,
  #         reps: workoutExercise.reps,
  #         numSets: workoutExercise.numSets,
  #         totalReps: workoutExercise.totalReps,
  #         setInfo: workoutExercise.setInfo
  #       }
  #     end
  #     workout = {id:workout.id, user_id: workout.user_id, routine_type: workout.routine_type, workout_date: workout.workout_date, exercises: workoutExercises}
  #   end
  # end
end
