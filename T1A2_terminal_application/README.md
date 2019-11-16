

# **My Recipe App**

A basic cooking program that gives you recipe options based on items you have available and your diet restrictions.

# **Contributor**

@luisaziccarelli is a student at Coder Academy, Sydney Campus. She has no prior tech background to this bootcamp and this is her first terminal app using Ruby. 

# **Help** 
## Installation Instructions

- Click the link below and clone the Recipe App git repository to your local computer. You can find Clone or download green tab located on the right upper corner of the repository.

https://github.com/luisaziccarelli/T1A2_terminal_application.git 

## Dependencies 

- ruby 2.6.3p62 
- Colorize Gem
git@github.com:fazibear/colorize.git
- ASCII Artii 
git@github.com:miketierney/artii.git

## System/Hardware Requirements

There is no specific system/hardware requirement for this application.

# **Software development plan** 

# Statement and scope: 

•   My Recipe App is a CLI application written in Ruby, which can be easily run on the command line. There are a lot of recipe websites, pinterest, and other apps you can use to find new recipes. But with so many options out there this process can become rather overwhelming and time consuming. I wanted to create a basic app that would simplify this process for users and would help them find interesting recipes based on items or ingredients they have available in their kitchen. 

•   Most of us these days struggle to find the time to plan ahead our shopping lists, let alone to come up with new ideas or recipes. Developers are no exception. So I have come up with an app that can take input on the items you already have and provide with recipe ideas to tackle this problem. 

•   The target audience for this app is anyone looking for new ideas on recipes they can make when they only have a few ingredients at hand and limited time to go shopping. The user will need to have at least a few items of food available at hand. 

•   The user would be asked input about what ingredients they have at hand and also about the meal they are looking to make (dietary restrictions). The program will output the recipe that matches their input. 


# Features
- Key features: 
    - Feature 1: **Main ingredients**  
    The program starts by asking input from the user on the items of food the user has available in their kitchen. 
    - Feature 2:  **Dietary restrictions**  
    This program asks user inputs on whether they have any dietary restrictions. For the purpose of this program the dietary restrictions considered were: vegan and gluten free. 
    - Feature 3: **Recipe**  
    This program will output a recipe or a Step-by-step cooking instructions on how-to make the given meal.
   
- Addional features: 
    - Feature 4:  **Prep time**  
    The program will also output an indication of the time it will take the user to make the meal.
    - Feauture 5:  **Type of meal**            
    Whether the user wants to make breakfast, lunch, or dinner.
    - Feature 6: **Servings**     
    Number of people the recipe would feed.
    - Feature 7:  **Tools needed**    
    The type of cooking tools the user would need to use in order to prepare the meal such as: saucepan. 
    - Feature 8: **Extra ingredients**  
    Additional ingredients other than the main ingredients that the user could have to implement the recipe, such as: condiments. 

# User Interaction Experience 

- The program will prompt users to answer a series of questions, including: ingredients they have in their kitchen as well as their dietary restrictions. Nowadays there is a wide range of dietary restrictions and preferences, for instance vegetarian, pescatarian, etc. However for the purpose of this program the user will be given only two options in terms of dietary restrictions: vegan and/or gluten free.

- The program will get input from the users on these two key features, their available food items and their dietary restrictions as mentioned above. The program will store this information into variables to use it later. 

- The program will manipulate the variables and output a list of recipes that meet the main ingredients the user has available as well as their dietary restrictions. The recipes will include: name of the recipe, preparation time, and instructions on how to make the meal. 

# Error Handling

- When getting user input we could expect some errors will occur. For example typing errors or entering a variable value that does not exist within our program. These erros will be handled by using exceptions. 

# Control Flow Diagram

- The control flow diagram below represents the control flow for this application. 

https://drive.google.com/file/d/1r2MAMTzTt3r9_DnZiVpKsIW6irQ3uHyL/view?usp=sharing

# Implementation Plan

|Feautures           | Checklist                                         | Priority | Deadline    |
|---                 |---                                                |---       |---          |
| Main Ingredients   | Print to screen                                   |   High   |  15/11/19   |
|                    | Get user input                                    |          |             |
|                    | Create variable with user input                   |          |             |
|                    | Create a method                                   |          |             |
|Dietary Restrictions| Get input  (vegan, gf)                            |   High   |  15/11/19   |    
|                    | Create variable with user input                   |          |             |
|                    | Create method that outputs their diet restriction |          |             |
|                    | Create method that outputs possible combinations  |          |             |
|Recipes             | Create array of hashes with recipes               |   High   |  16/11/19   | 
|                    | Create a loop to loop over array of hashes        |          |             |
|                    | Create a method to print recipe                   |          |             |
|                    | Add a gem                                         |          |             |
|Help, test, ARGV    | Error handling with exceptions                    |  Medium  |  19/11/19   |
|                    | Create ARGV array                                 |          |             |
|                    | Create bash script                                |          |             |

 