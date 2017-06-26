# This file was generated with the following command:
#
# rails generate migration add_example_model
#
# NOTES:
# 1) The long number at the beginning (20170626131959) is a timestamp.
#    Migrations must be unique.  Rails ensures this by adding a timestamp
#    20170626131959 => 2017,06,26,13,19,59 (June 26, 2017, 1:19:59 pm UTC)
# 2) The stuff inside the "change" method was added manually after rails
#    created this file

class AddExampleModel < ActiveRecord::Migration[5.1]
  def change
    # 3) The table name needs to be plural
    create_table :examples do |t|
      # 4) An id is added automatically.  It is the unique
      #    identifier for each record

      # 5) "string" is the data type of this column
      #    "given_name" is the name of the column
      t.string :given_name

      # 6) "integer" is the data type of this column
      #    "quantity" is the name of the column
      t.integer :quantity
    end
  end
end

# 7) When we "run" this migration, it will add a table to
# the database that looks like this:

# id | given_name | quantity
# --------------------------
#  1 |   "steve"  |   5
#  2 |   "debbie" |   72
#  3 |   "tommy"  |   100

# 8) To "run" the migration, we use 'rake db:migrate'






