class AddColumnToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :zipcode, :integer
  end
end
