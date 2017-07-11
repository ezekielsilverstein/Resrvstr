class AddAdminToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_reference :restaurants, :admin, foreign_key: true
  end
end
