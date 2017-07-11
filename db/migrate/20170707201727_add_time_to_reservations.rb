class AddTimeToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :time, :datetime
  end
end
