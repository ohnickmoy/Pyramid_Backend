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

puts 'creating Users'

u1 = User.create(username: 'NickM', password: '123')

puts 'creating workout'

w1 = Workout.create(user_id: u1.id, routine_type: 'A1', workout_date: '2020-01-09T00:00:00.000Z')

puts 'creating exercises'

e1 = Exercise.create(name: 'Squat')
e2 = Exercise.create(name: 'Bench Press')
e3 = Exercise.create(name: 'Lat Pulldown')

puts 'creating workout exercises'

we1 = WorkoutExercise.create(exercise_id: e1.id, workout_id: w1.id, tier: 'T1', weight: 100, reps: 3, numSets: 5, totalReps: 15, setInfo: ["3","3","3","3","3"])
we2 = WorkoutExercise.create(exercise_id: e2.id, workout_id: w1.id, tier: 'T2', weight: 80, reps: 10, numSets: 3, totalReps: 30, setInfo: ["10","10","10"])
we3 = WorkoutExercise.create(exercise_id: e3.id, workout_id: w1.id, tier: 'T3', weight: 55, reps: 15, numSets: 3, totalReps: 30, setInfo: ["15","15","15"])

puts 'Creating Second Set Type and Accompanying exercises'
# u1 = User.find(1)

w2 = Workout.create(user_id: u1.id, routine_type: 'B1', workout_date: "2020-01-10T00:00:00.000Z")

puts 'creating exercises'

e4 = Exercise.create(name: 'Overhead Press')
e5 = Exercise.create(name: 'Deadlift')
e6 = Exercise.create(name: 'Dumbbell Row')

puts 'creating workout exercises'

we4 = WorkoutExercise.create(exercise_id: e4.id, workout_id: w2.id, tier: 'T1', weight: 100, reps: 3, numSets: 5, totalReps: 15, setInfo: ["3","3","3","3","3"])
we5 = WorkoutExercise.create(exercise_id: e5.id, workout_id: w2.id, tier: 'T2', weight: 80, reps: 10, numSets: 3, totalReps: 30, setInfo: ["10","10","10"])
we6 = WorkoutExercise.create(exercise_id: e6.id, workout_id: w2.id, tier: 'T3', weight: 55, reps: 15, numSets: 3, totalReps: 30, setInfo: ["15","15","15"])

puts 'testing third'

# u1 = User.find(1)
w3 = Workout.create(user_id: u1.id, routine_type: 'A2', workout_date: "2020-01-13T18:23:39.100Z")

puts 'creating workout exercises'

we7 = WorkoutExercise.create(exercise_id: e2.id, workout_id: w3.id, tier: 'T1', weight: 105, reps: 2, numSets: 6, totalReps: 12, setInfo: ["2","2","2","2","2","2"])
we8 = WorkoutExercise.create(exercise_id: e1.id, workout_id: w3.id, tier: 'T2', weight: 85, reps: 8, numSets: 3, totalReps: 24, setInfo: ["8","8","8"])
we9 = WorkoutExercise.create(exercise_id: e3.id, workout_id: w3.id, tier: 'T3', weight: 55, reps: 15, numSets: 3, totalReps: 30, setInfo: ["15","15","15"])