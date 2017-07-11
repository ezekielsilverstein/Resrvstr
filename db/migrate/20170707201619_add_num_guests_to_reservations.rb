class AddNumGuestsToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :guests, :integer
  end
end
