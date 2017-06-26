Rails.application.routes.draw do

  # MODEL EXAMPLES

  # Model with no database connection
  #
  # Things to look at here:
  # - ModelExamplesController#example1
  # - models/plain_object_example.rb
  #
  # Get a PlainObjectExample
  get 'model_examples/example1', to: 'model_examples#example1'

  # EXERCISE: Use a query param to set the name
  #
  get 'model_examples/example2', to: 'model_examples#example2'


  # Model with database connection
  #
  # Things to look at here:
  # - ModelExamplesController#example3
  # - models/example.rb
  # - db/migrate/20170626131959_add_example_model.rb
  # - db/schema.rb
  #
  # Example 3: Creates a new record if "given_name" param is present
  get 'model_examples/example3', to: 'model_examples#example3'

  # Example 4: Show all names saved
  get 'model_examples/example4', to: 'model_examples#example4'


  # EXERCISE:

  # Add the migration:
  # 1) Generate a migration: "$ rails g migration add_restaurants"
  # 2) Create a new table for restaurants:
  #    Columns: name, address
  # 3) Check with teacher that syntax is correct
  # 4) Run the migration: "$ rake db:migrate"
  # 5) Check the "db/schema.rb" to see that it was created
  #
  # Add the model:
  # 1) Add a new file: models/restaurant.rb
  # 2) Add the class definition, inherit from ActiveRecord::Base
  # 3) Open rails console, create 2 restaurants
  #
  # Add the controller:
  # 1) Add a controller (RestaurantsController, controllers/restaurants_controller.rb)
  # 2) Add an action named 'index'.  Make it show all existing restaurants
  # 3) Sort the restaurants alphabetically by name

  # Add a view:
  # 1) Create the file views/restaurants/index.html.erb
  # 2) Create a table that shows the id, name, and address of all restaurants



  # Extra Credit:
  # If you get this far:
  #
  # Read about REST and Rails: http://www.restapitutorial.com/lessons/httpmethods.html
  # take a look at https://github.com/toppy42/integratedexamples
  #
  # Create a full restful API for restaurants with all methods and pages


end
