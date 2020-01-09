class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :routine_type, :created_at
  # belongs_to :user
  has_many :workout_exercises
  #has_many :exercises
end
