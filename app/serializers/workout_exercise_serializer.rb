class WorkoutExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :exercise_id, :workout_id, :tier, :weight, :reps, :numSets, :totalReps
end
