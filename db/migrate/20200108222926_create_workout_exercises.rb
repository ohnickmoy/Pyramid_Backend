class CreateWorkoutExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_exercises do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.string :tier
      t.float :weight
      t.integer :reps
      t.integer :numSets
      t.integer :totalReps

      t.timestamps
    end
  end
end
