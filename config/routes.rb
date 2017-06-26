Rails.application.routes.draw do


  # HTTP VERB EXAMPLES
  #
  # The word "Record" usually means an item in the database
  #
  # GET => Used to get information
  # POST => Used to create new records
  # PUT => Used to update existing records
  # DELETE => Used to delete records

  # All of these examples do the same thing, but
  # using different HTTP verbs

  # Only GET works from a browser URL
  get 'example1', to: "example#example1"
  # curl localhost:3000/example1

  put 'example1', to: "example#example1"
  # curl - X PUT localhost:3000/example1

  post 'example1', to: "example#example1"
  # curl - X POST localhost:3000/example1

  delete 'example1', to: "example#example1"
  # curl - X DELETE localhost:3000/example1

  # These examples use different HTTP verbs to route to different methods
  put 'example', to: "example#example_put"
  # curl -X PUT localhost:3000/example

  post 'example', to: "example#example_post"
  # curl -X POST localhost:3000/example


end
