class AddWorkoutDateToWorkout < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :workout_date, :datetime
  end
end
