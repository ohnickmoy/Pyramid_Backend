class ChangeSetInfoToBeStringInWorkoutExercises < ActiveRecord::Migration[6.0]
  def change
    change_column :workout_exercises, :setInfo, :string, array: true, default: []
  end
end
