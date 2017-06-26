class PlainObjectExample
  # This is a generic Ruby class
  # It is a data source that does not connect
  # to the database.
  # It has no ability to write new data

  # EXERCISE:
  # Open up a rails console: `rails console`
  # Try out the following commands:
  # my_object = PlainObjectExample.new("Billy Bob Thornton")
  # my_object.given_name
  # my_object.given_name = "Johnny Depp"
  # my_object.given_name
  #
  # my_object.quantity
  # my_object.quantity = 1000
  # my_object.quantity

  def initialize(name)
    # Instance Variable Assignment
    @given_name = name

    # Accessor assignment
    self.quantity = rand(100) # This is allowed because of "attr_accessor"
  end

  # These are the explicit definitions of
  # the attribute methods.
  # See "quantity" for shortcut definition
  def given_name
    @given_name
  end

  def given_name=(new_name)
    @given_name = new_name
  end

  attr_accessor :quantity
  # This "attr_accessor" is a shortcut, does the same thing as:
  #
  # def quantity
  #   @quantity
  # end

  # def quantity=(new_quantity)
  #   @quantity = new_quantity
  # end
end
