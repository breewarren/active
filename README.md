# active., by ambreea and abbosbek

### Technical Description: 
A Ruby on Rails web application with CRUD functioning and analytic features, incorporating:
* MVC-based Architectural Framework Design (via Rails)
* Object Relational Mapping (with ActiveRecord)
* SQL Databases (using sqlite3)
* Object Orientation Models (via Ruby)

* validations, authentications, authorizations, session/cookies

<br />

### App Description:
active. was inspired by its creators who believe in the importance of an agile, athletic lifestyle. With a series of features, including: Assessment, where one is able to gain knowledge regarding an individual's overall health, as well as WorkoutLogs/RecoveryLogs, which enables one to keep track of movement from a selection of our comprehensive list of options, a user has the ability to attain their health goals, regardless of experience level.
#
## Instructions:
### Click [here](http://localhost:3000/) to begin the application!

#
#
## Models & Relationships

        Assessment | User | WorkoutLog (Join Model) | Workout | RecoveryLog (Join Model) | Recovery

### User <br/>
* A User has many Assessments

* A User has many WorkoutLogs
* A User has many Workouts, through WorkoutLogs
* A User has many RecoveryLogs
* A User has many Recoveries, through RecoveryLogs

### Workout <br/>
* A Workout has many WorkoutLogs

* A Workout has many Users, through WorkoutLogs

### Recovery <br/>
* A Recovery has many RecoveryLogs

* A Recovery has many Users, through RecoveryLogs

### Assessment <br/>
* An Assessment belongs to a User

### WorkoutLog <br/>
* A WorkoutLog belongs to a User

* A WorkoutLog belongs to a Workout

### RecoveryLog <br/>
* A RecoveryLog belongs to a User

* A RecoveryLog belongs to a Recovery
#
#
## SQL Database Table Properties
<br>

### User Table Properties
* Name

* Username (Email Address)
* Password

### Assessment Table Properties
* Age (in years)

* Sex (M or F)
* Height (in inches)
* Weight (in pounds)
* Body Fat Percentage
* Health Goal (Fat Loss, Muscle Gain, or Maintenance)
* User ID

### Workout Table Properties
* Workout Type

### Recovery Table Properties
* Recovery Type

### Workout Log Table Properties
* Date

* Duration (in minutes)
* Calories Burned
* User ID
* Workout ID

### Recovery Log Table Properties
* Date

* Duration (in minutes)
* Recovery Points (up tp 5)
* User ID
* Recovery ID

#
#
## CRUD Functionality
<br>

### Create
* User can create a new User account

        UsersController#new
        UsersController#create

* User can create a new Assessment

        AssessmentsController#new
        AssessmentsController#create

* User can create a new WorkoutLog
        
        WorkoutLogsController#new
        WorkoutLogsController#create

* User can create a new RecoveryLog

        RecoveryLogsController#new
        RecoveryLogsController#create
#
### Read
* User can view User account details, along with associated Assessments, WorkoutLogs, and RecoveryLogs

        UsersController#show

* User can view a list of all Workouts

        WorkoutsController#index

* User can view a list of all Recoveries

        RecoveriesController#index
* User can view Assessment details

        AssessmentsController#show

* User can view WorkoutLog details

        WorkoutLogsController#show

* User can view RecoveryLog details

        RecoveryLogsController#show 
#
### Update
* User can update User account details

        UsersController#edit
        UsersController#update
* User can update an existing Assessment

        AssessmentsController#edit
        AssessmentsController#update

* User can update an existing WorkoutLog details

        WorkoutLogsController#edit
        WorkoutLogsController#update
* User can update an existing RecoveryLog details

        RecoveryLogsController#edit
        RecoveryLogsController#update
#
### Delete
* User can delete its existing User account

        UsersController#destory

* User can delete an existing Assessment

        AssessmentsController#destory

* User can delete an existing WorkoutLog

        WorkoutLogsController#destroy

* User can delete an existing RecoveryLog

        RecoveryLogsController#destroy
#
## Additional Model Methods
<br/>

### Assessment
* User is provided with calculated Body Mass Index (BMI) based on height and weight
    
        Assessment#current_bmi
* User is provided with recommended Body Mass Index (BMI) based on height and weight
    
        Assessment#recommended_bmi
* User is provided with body fat category, based on sex and current body fat %

        Assessment#current_bf_percent
* User is provided with recommended body fat range, based on sex and current body fat %

        Assessment#recommended_bf_percent
* User is provided with maximum, based on age

        Assessment#max_hr
* User is provided with target heart rate, based on age

        Assessment#target_hr
* User is provided with recommended caloric intake based on Health Goal

        Assessment#caloric_intake
* User is provided with recommended water intake, based on weight

        Assessment#water_intake
#
### User
* User is provided with a Workout accomplishment message upon logging 10 WorkoutLogs

        User#workout_accomplishment

* User is provided with a Recovery accomplishment message upon accumulation of 15 Recovery Points

        User#recovery_accomplishment

#
### WorkoutLog
* User is provided with total number of WorkoutLog entries

        WorkoutLog#total_workouts
* User is provided with total calories burned of all WorkoutLogs

        WorkoutLog#total_calories_burned
* User is provided with total duration of all WorkoutLogs

        WorkoutLog#total_duration
* User is provided with WorkoutLog with highest amount of calories burned
        
        WorkoutLog#highest_calories_burned
* User is provided with WorkoutLog with longest duration

        WorkoutLog#longest_duration
* User is provided with total Workout Points

        WorkoutLog#total_workout_points
#
### RecoveryLog
* User is provided with total number of RecoveryLog entries

        RecoveryLog#total_recoveries
* User is provided with total duration of all RecoveryLogs

        RecoveryLog#total_duration
* User is provided with RecoveryLog with longest duration

        RecoveryLog#longest_duration
* User is provided with total Recovery Points

        RecoveryLog#total_recovery_points

#
#

## Stretch Goals
* Use of Partials and Life Cycle Methods for DRY code

* Login Validation
* Points system for WorkoutLog and RecoveryLog
* Ability for creationg of Custom Workouts and Recoveries
* Default Dropdown Selection on New/Edit Forms
* Cookies/Session integration
* Links to Details on Workouts and Recoveries

#
## Related Information
<br/>

### Video Demo:
 [Video Demo Link](https://video.com/blahblahblah)

### Things Learned:
* 

### Difficulties:
* 

### Changes/Modifications/Additions:
* 

### Highlights
* 

#

## Thank you! <br> Bree Warren and Abbosbek Muydinboev
#
#
## TO-DO LIST:

monday (planning) - DONE
tuesday (functionality) - DONE

wednesday (dry code & aesthetics)
- clean up navigation
- change name of rails lab, if possible
- work on simple login validation
- DRY (partials, before_action, etc.)
- authentificaion? cookies & sessions?
- front-end focus on HTML/CSS/Bootstrap

thursday (finishing up)
- specify route resources
- finish any back-or front end
- finish things learned/highlights/difficulties, etc
- create walkthrough to record

friday (presenting)
- record walkthrough
- update readme with any changes
- present

