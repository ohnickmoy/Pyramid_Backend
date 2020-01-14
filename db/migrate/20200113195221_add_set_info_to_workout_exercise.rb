class AddSetInfoToWorkoutExercise < ActiveRecord::Migration[6.0]
  def change
    add_column :workout_exercises, :setInfo, :integer, array: true, default: []
  end
end
