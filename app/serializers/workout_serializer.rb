class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :routine_type, :workout_date
  # belongs_to :user
  # has_many :workout_exercises
  attributes :exercises do |object|
    workoutExercises = WorkoutExercise.all.select do |workoutExercise|
      workoutExercise.workout_id === object.id
    end
    workoutExercises = workoutExercises.sort_by {|workoutExercise| workoutExercise.tier}

    workoutExercises = workoutExercises.map do |workoutExercise|
      exercise = Exercise.find(workoutExercise.exercise_id)

      workoutExercise = {
        id: workoutExercise.id, 
        exercise_id: workoutExercise.exercise_id,
        workout_id: workoutExercise.workout_id,
        name: exercise.name,
        tier: workoutExercise.tier,
        weight: workoutExercise.weight,
        reps: workoutExercise.reps,
        numSets: workoutExercise.numSets,
        totalReps: workoutExercise.totalReps,
        setInfo: workoutExercise.setInfo
      }
    end
  end
  #has_many :exercises
end
