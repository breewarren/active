# app name.


## Instructions:
### Click [here](http://localhost:3000/) to begin the application!

----

## Models & Relationships

### User | Log (Join Model) | Workout | Recovery | Assessment
<br />

### User <br/>
* A User has many Logs
* A User has many Workouts, through Logs
* A User has many Assessments
* A User has many Recoveries

### Log <br/>
* A Log belongs to a User
* A Log belongs to a Workout

### Workout <br/>
* A Workout has many Logs
* A Workout has many Workouts, through Logs

### Assessment <br/>
* An Assessment belongs to a User

### Recovery <br/>
* A Recovery belongs to a User

#
## SQL Database Table Properties

### User Table Properties
* Name
* Username (Email Address)
* Password

### Log Table Properties
* Date
* User ID
* Workout ID

### Workout Table Properties
* Workout Type
* Duration
* Calories Burned

### Assessment Table Properties
* Age
* Sex (M or F)
* Height
* Weight
* Body Fat Percentage
* Health Goal (Weight Loss, Weight Gain, Maintenance)
* User ID

### Recovery Table Properties
* Recovery Type
* Duration
* User ID

#
## CRUD Functionality, aka User Stories
"." Designates class methods | "#" Designates instance methods
#


## Additional Methods
### User
* User is given achievement
    
        User#achievement

### Workout

* User is provided with workout with highest calories burned
    
        Workout#hightest_calories_burned

### Assessment
* User is provided with suggested and calculated Body Mass Index (BMI)
    
        Assessment#bmi
* User is provided with suggested caloric intake based on Health Goal

        Assessment#caloric_intake
* User is provided with suggested body fat percentage

        Assessment#body_fat_percentage

### Recovery

### Log

## CRUD Functionality, aka User Stories
"." Designates class methods | "#" Designates instance methods

### Create
* User can create an account

        User#create_account
* User can create an instance of a pregnancy

        AppCLI.create_pregnancy
* User can create an instance of a MedicalProvider
        
        User#create_medical_provider
#
### Read
* User can view all account information 

        User#account_info
* User can view all pregnancies specific to oneself

        User#pregnancies
* User can view all MedicalProviders specific to oneself

        User#medical_providers
* User can view the pregnancies specific to the MedicalProvider

        MedicalProvider#pregnancies
* User can view information of a specific MedicalProvider

        MedicalProvider#obgyn_profile_info
#
### Update
* User can update account information

        User#update_account
* User can update an instance of one's own Pregnancy information

        User#update_pregnancy
* User can update an instance of one's own MedicalProvider information

        User#update_medical_provider
#
### Delete:
* User can deactivate one's own account

        User#deactivate_account
* User can delete an instance of a Pregnancy speficic to oneself

        User#delete_pregnancy
* User can delete an instance of a MedicalProvider specific to oneself

        User#delete_medical_provider
## TO-DO LIST:

