# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'flushing out tables'
# User.destroy_all()
# Workout.destroy_all()
# WorkoutExercise.destroy_all()
# Exercise.destroy_all()

# puts 'creating Users'

# u1 = User.create(username: 'NickM', password: '123')

# puts 'creating workout'

# w1 = Workout.create(user_id: u1.id, routine_type: 'A1')

# puts 'creating exercises'

# e1 = Exercise.create(name: 'Squat')
# e2 = Exercise.create(name: 'Bench Press')
# e3 = Exercise.create(name: 'Lat Pulldown')

# puts 'creating workout exercises'

# we1 = WorkoutExercise.create(exercise_id: e1.id, workout_id: w1.id, tier: 'T1', weight: 100, reps: 3, numSets: 5, totalReps: 15)
# we2 = WorkoutExercise.create(exercise_id: e2.id, workout_id: w1.id, tier: 'T2', weight: 80, reps: 10, numSets: 3, totalReps: 30)
# we3 = WorkoutExercise.create(exercise_id: e3.id, workout_id: w1.id, tier: 'T3', weight: 55, reps: 15, numSets: 3, totalReps: 30)

puts 'Creating Second Set Type and Accompanying exercises'
u1 = User.find(1)

w2 = Workout.create(user_id: u1.id, routine_type: 'B1')

puts 'creating exercises'

e1 = Exercise.create(name: 'Overhead Press')
e2 = Exercise.create(name: 'Deadlift')
e3 = Exercise.create(name: 'Dumbbell Row')

puts 'creating workout exercises'

we1 = WorkoutExercise.create(exercise_id: e1.id, workout_id: w2.id, tier: 'T1', weight: 100, reps: 3, numSets: 5, totalReps: 15)
we2 = WorkoutExercise.create(exercise_id: e2.id, workout_id: w2.id, tier: 'T2', weight: 80, reps: 10, numSets: 3, totalReps: 30)
we3 = WorkoutExercise.create(exercise_id: e3.id, workout_id: w2.id, tier: 'T3', weight: 55, reps: 15, numSets: 3, totalReps: 30)