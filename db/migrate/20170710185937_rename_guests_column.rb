class RenameGuestsColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :reservations, :guests, :guest_count
  end
end
