# ASSESSMENT 6: Interview Practice Questions
Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: The foreign key would be called animal_id within sightings.

  Researched answer: As an interger datatype the foreign key should be called animal_id inisde Sightings.



2. Which RESTful routes must always be passed params? Why?

  Your answer: Show, edit, update and destroy 

  Researched answer:Show, edit, update and destroy need to be passed because they they point to specific data being called by an ID.



3. Name three rails generator commands. What is created by each?

  Your answer: (1-)Rails generate controller, creates a controller, (2-) Rails generate model- IT creates a model that can be filled with data, (3-) Rails generate resource- This creates both a model and a controller.

  Researched answer: Rails generate - Gives a list of available generators such as assets, channel, controller, generator, etc. Rails generate controller ControllerName action1 action2 - Used to make your own controller with expecting parameters. It creates the controller file, a view file, a functional test file, a helper for the view, a JS file, and a stylesheet file. Rails generate model ModelName column_1_name:columnType column_2_name:columnType - Creates data models. It creates the model file and a migration file which describes the changes being made to the schema. Rails generate initializer - Invoke a new generator. Rails generate scaffold - Generate major pieces of an application. Easy way to automatically create the models, views, and controllers for a new resource or the basic structure of a Rails project. It also includes a new route and a migration to prepare the database. Adds a unique property to a field. Rails generate migration AddFieldToModel field:type - Add a column to an existing model.



4. Consider the Rails routes below. What is the name of the controller method that would be called by each route? What action would each of the controller methods perform?

method="GET"    /users        user#index  Displays a list of all users

method="GET"    /users/1        user#show Displays user1

method="GET"    /users/new      user#new Route to the view to witht the form to make a new user.

method="GET"    /users/edit/1    user#edit Routs to the view with the form where the peperties that are gonna be updated.

method="POST"   /users/       user#create This'll take what is in the form and makes teh change in the database.

method="PUT"    /users/1      user#update  This route will make the changes on the form actually occuing in the database 

method="DELETE" /users/1      user#destory Delete an instance of a class



5. As a developer, you want to make an application that will help you manage your to do list. For the MVP, you want to create just the user's view. Create 10 user stories that will help you get your application started. 
As a user I can give a name to my to do list.

As a user I can add a task to my to do list.

As a user I can add a description and details to my task.

As a user I can mark my task as completed.

As a user I can see my completed tasks.

As a user I can also unmark a task as complete.

As a user I can edit my to do list name.

As a user I can edit the tasks description or details.

As a user I can rearrenge the order of my tasks.

As a user I can delete a task.