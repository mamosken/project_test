class AddColumnsToApartments < ActiveRecord::Migration
  def change
  	add_column :apartments, :latitude, :float
  	add_column :apartments, :longitude, :float
  	add_column :apartments, :price_id, :integer

  end
end
