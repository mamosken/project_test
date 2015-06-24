class AddColumnAddressToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :postal_code, :integer
  end
end
