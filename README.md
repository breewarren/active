# sustenance.


## Instructions:
### Click [here](http://localhost:9393/) to begin the application!

----

## Models & Relationships

### User | SustenanceLog (Join Model) | Food
<br />

### User <br />
* A User has many SustenanceLogs <br />
* A User has many Foods, through SustenanceLogs <br />


### SustenanceLog <br />
* A SustenanceLog belongs to a User <br />
* A SustenanceLog belongs to a Food <br />


### Food <br />
* A Food has many SustenanceLogs <br />
* A Food has many Users, through SustenanceLogs <br />
----
## SQL Database Table Properties

### User Table Properties
* First Name
* Health Goal
    * Weight Loss, Maintain Weight, or Weight Gain
* Calorie Goal

### SustenanceLog Table Properties
* Date
* Meal Time
    * Breakfast, Lunch, Dinner, or Snack
* User ID (Foreign Key)
* Food ID (Foreign Key)

### Food Table Properties
* Name
* Calories

-----

## TO-DO LIST:

