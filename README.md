# Used Auto Sales.

We are going to create a Command Line Application (CLI) application that will allow a Used Car Lot the ability to manage it's cars.

A Used Car Lot manager can use the application to see the value of each car on the lot. Each car's current price, value, will be calculated by subtracting the below from the car's initial price, _MSRP of the car when it was new_.

* Cost of all the car's current damages.
* Cost reduction for all past damages that have been fixed. _The fact that the car was damaged, but fixed, will reduce the price of the car._
* Yearly depreciation.
* Cost reduction based on the car mileage.

The application user, Lot Manager, will be able to set a _adjustment price_ on each car. This will allow the user to vary the cost of the car. It will typically represent the profit margin but it could be negative if the user so determines.

You will create a set of _User Stories_ that will determine this app's features. The User Stories will be saved in a file named "user_stories.txt". They should be ordered by priority. Each completed story should be prefixed with __(DONE)__.

You can _either_ manually input each car, with it's attributes and damages, _OR_ you can create a populate _class method_ on the Auto Lot class_

Suggest you create this populate method, otherwise it will may be very tedious to populate the Lot.

### Sample User Stories.

* Users can see the price of a specific car.
* Users can the total price, lot value, for all cars in the lot.
* Users can adjust the price of a car.
* Users can add cars to the lot.
* Users can see the total number of cars in the lot.
* Users can search for cars by make, model or year.

### Sample Entities (Classes)

### Auto Lot
* It should have a name.
* It should have the behaviors determined by the User Stories.

#### Car
* It should have a make, model and year.
* Each car will have a vehical ID, VID.
* It should have a initial price. _Cost of the car when new, MSRP._
* It should have a depreciation rate. How does price each year.
* It may have a set of damages.


#### Damage
* It should have description.
* It should have a damage cost, _how much to repair the damage_.
* It should have dollar value representing how much a repair for this type of damage will be substracted from the car price.