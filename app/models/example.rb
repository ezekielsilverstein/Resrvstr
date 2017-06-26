# ActiveRecord::Base adds a bunch of invisible stuff
# that allows us to connect to the database
class Example < ActiveRecord::Base

  # ActiveRecord gives us a bunch of methods for free:
  # self.id
  # self.given_name self.given_name =
  # self.quantity and self.quantity=

  # EXERCISE: Open up a rails console: `rails console`
  # Try out the following commands:

  # Create a new record:
  # my_record = Example.new(given_name: "Billy Bob Thornton", quantity: 1000)
  # my_record.save

  # Activerecord query methods:
  #
  # Get all records:
  # Example.all

  # Get a subset of records:
  # Example.where(given_name: 'Billy Bob Thornton')
  # Example.where(quantity: 1000)

  # Get a list of records in some order:
  #
  # In alphabetical order:
  # Example.all.order(:given_name)
  #
  # In reverse alphabetical order:
  # Example.all.order(given_name: :desc)
end
