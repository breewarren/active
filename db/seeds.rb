# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#User
bree = User.create(name: "Bree", username: "ambreea.warren@gmail.com", password: "3693")
abbo = User.create(name: "Abbo", username: "muydinboevabbosbek@gmail.com", password: "1234")

#Workout
jogging = Workout.create(workout_type: "Jogging")
swimming = Workout.create(workout_type: "Swimming")
golf = Workout.create(workout_type: "Golf")
yoga = Workout.create(workout_type: "Yoga")
strength_training = Workout.create(workout_type: "Strength Training")
hiit_training = Workout.create(workout_type: "High Intensity Interval Training")
walking = Workout.create(workout_type: "Walking")
cycling = Workout.create(workout_type: "Cycling")
basketball = Workout.create(workout_type: "Basketball")
soccer = Workout.create(workout_type: "Soccer")
boxing = Workout.create(workout_type: "Boxing")
wrestling = Workout.create(workout_type: "Wrestling")
soccer = Workout.create(workout_type: "Soccer")
martial_arts = Workout.create(workout_type: "Martial Arts")
cardio = Workout.create(workout_type: "Cardio")

#Recovery
foam_rolling = Recovery.create(recovery_type: "Foam Rolling")
massage = Recovery.create(recovery_type: "Massage")
ice_bath = Recovery.create(recovery_type: "Ice Bath")
stretching = Recovery.create(recovery_type: "Stretching")
epsom_salt_soak = Recovery.create(recovery_type: "Epsom Salt Soak")
sleeping = Recovery.create(recovery_type: "Sleeping")

#Assessment
bree_assess = Assessment.create(age: 27, sex: "F", height: 66, weight: 145, body_fat_percent: 20, health_goal: "Fat Loss", user_id: bree.id)
abbo_assess = Assessment.create(age: 23, sex: "M", height: 71, weight: 165, body_fat_percent: 17, health_goal: "Muscle Gain", user_id: abbo.id)

#WorkoutLog
bree_workout_log_20200929 = WorkoutLog.create(date: "09.29.2020", duration: 45, calories_burned: 250, user_id: bree.id, workout_id: yoga.id)
abbo_workout_log_20200929 = WorkoutLog.create(date: "09.29.2020", duration: 60, calories_burned: 500, user_id: abbo.id, workout_id: martial_arts.id)

#RecoveryLog
bree_recovery_log_20200929 = RecoveryLog.create(date: "09.29.2020", duration: 30, recovery_points: 3, user_id: bree.id, recovery_id: massage.id)
abbo_recovery_log_20200929 = RecoveryLog.create(date: "09.29.2020", duration: 480, recovery_points: 5, user_id: abbo.id, recovery_id: sleeping.id)

puts "Good to go!"