**Software Development Plan** 


# EASY RECIPE APP OVERVVIEW 
- S Ask user input on what type of meal they would like to make (breakfast, lunch, dinner)
- S	Ask user input on how many people are eating (1-2,3-4,5-8)
- D	Ask user input on what they have in their fridge or shopping bag? (user to type names of foods or ingredients)
- D	Ask user input on any dietary restrictions (vegan, vegetarian, gluten-free)
- D	Outputs recipe that matches the user selection 
	- Could use gem for recipes 

# Statement and Scope: 
•	Describe at a high level what the application will do

This app will help users find recipes based on items or ingredients they have in their fridge or shopping list. 

•	Identify the problem it will solve and explain why you are developing it

Most people these days struggle to find the time to the time to come up with new ideas or recipes, let alone do a proper grocery shop. Devs are no exception. 

•	Identify the target audience 

Target audience is anyone looking for new ideas on recipes they can make when they only have a few ingredients at hand and limited time to go to the shops. 

•	Explain how a member of the target audience will use it

The user would be asked input about what ingredients they have at hand and also about the meal they are looking to make (dietary restrictions). The program will output the a recipe that matches their input. 

# Features
- Donuts: 
    - Main ingredients: name of items of food the user has available for example spinach. 
    - Recipe: a Step-by-step cooking instructions on how-to make the given meal.
    - Prep time: indication of the time it will take the user to make the meal.
    - Dietary restrictions: provides information on whether the user has any dietary restrictions that the program should be aware of such as: food allegergies (nut allergy), lactose intolerance, vegan, vegetarian, gluten-free.

- Sprinkles: 
    - Type of meal (B, L , D): whether the user wants to make breakfast, lunch, or dinner.
    - Number of people: number of people who would be having the meal. For instance a single person vs family.
    - Tools needed: the type of cooking tools the user would need to use in order to prepare the meal such as: saucepan. 
    - Extra ingredients: additional ingredients other than the main ingredients that the user could have to implement the recipe, such as: condiments. 

# User Interaction Experience 
- How the user will find out how to interact with / use each feature

Users will be asked a series of questions. For example: 

#Ask user input on what they have in their fridge or shopping bag? 

“Type a list of the ingredients you have available in your fridge”

- How the user will interact with / use each feature

Users will be prompted to provide input by typing answers to a series of questions. For example: 

#Ask user input on what they have in their fridge or shopping bag? 

o=“Type a list of the ingredients you have available in your fridge”

#Input from user

i= spinach, chicken, tomatoes

#Ask user input on any dietary restrictions 

o= “Do you have any dietary restrictions? (for example: vegan, vegetarian, gluten-free))

#Input from user 

i= vegan 

- How errors will be handled by the application and displayed to the user

User might input a category instead of a specific ingredient or food item. For example: 

#Ask user input on what they have in their fridge or shopping bag? 

o=“Type a list of the ingredients you have available in your fridge”

#Input from user: 

i= fruit 

How this error would be handled: 

#Ask user input on what they have in their fridge or shopping bag? 

o=“Type a list of the specific ingredients you have available in your fridge. For example lettuce, tuna” 



