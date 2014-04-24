# Honest Tom's Dealership

*"...and if you sign today, we'll throw in an extended warranty!"*

We are going to create a terminal-based application that will allow the manager of a used car lot to keep track of their cars.

The manager can use the application to see the value of each car on the lot. Each car's current price, or value, will be calculated by subtracting the below from the car's initial price (MSRP of the car when it was new).

* Yearly depreciation
* Cost reduction based on mileage
* Amount that the car's current damages would cost to fix
* *(bonus)* Cost reduction for fixed damages

The user of the application will also be able to set a *price adjustment* on each car to vary the cost of cars. This will typically represent the profit margin but it could be negative if the user so desires.

You will create a set of *User Stories* that will determine this app's features. The User Stories will be saved in a file named `user_stories.txt`. They should be ordered by priority. Each completed story should be prefixed with **(DONE)**. Feel free to add as many stories as you can dream up that may be implemented in the future.

We strongly recommend pre-populating the lot with a variety of damaged and undamaged cars at the start of your program, before prompting the user for an action. This will avoid having to re-enter the data every time you want to test something.

You will want to use all the Ruby tools for implementing object-oriented programs:

* Classes
* Getters and setters (minimize direct access to internal attributes)
* Instance methods and class methods to define object behavior
* Private methods where appropriate
* Class inheritance

## Sample User Stories

These stories are only examples and are not listed in any particular order. You may want to add more to flesh out the functionality of your app, or modify/split these to make them more specific.

* User can see the price of a specific car.
* User can the total price of all cars on the lot (the "lot value").
* User can see the total number of cars on the lot.
* User can add cars to the lot.
* User can add damages to cars on the lot.
* User can set price adjustments on cars.
* User can search for cars by make, model, or year.

## Sample Classes

### Car Lot
* has a name
* implements the top-level behaviors specified by the User Stories

### Car
* has a make, model, and year of manufacture
* has a unique vehicle ID number (each new car has an ID one higher than the last)
* has an initial price (MSRP when the car was new)
* has a depreciation rate (how much the value decreases each year)

### Used Car
* has the same attributes as a new car
* has a mileage
* may have one or more damages

### Damage
* has a description
* has a cost (how much it would cost to repair)
* *(bonus)* has a flag indicating whether this damage has been repaired
* *(bonus)* has a "value penalty" (amount this damage subtracts from the car's value, even if repaired)

## Grading

* **(3)** Completion of car-related functionality (viewing, adding, value calculations, etc.)
* **(2)** Completion of damages-related functionality (viewing, adding, affecting car value, etc.)
* **(2)** Appropriate use of class methods, private methods, and inheritance
* **(1)** Documentation and use of User Stories
* **(1)** Repository has several logical commits with descriptive messages
* **(1)** Code uses correct indentation/style and descriptive names for classes, methods, and variables

## Bonuses

* **(1)** That'll bump right out! Add the bullet points listed as *(bonus)* above and allow damages to be marked as repaired. If a damage is not repaired, it subtracts **both** its repair cost **and** its "value penalty" from the car's value. If a damage is repaired, only the "value penalty" is subtracted.
