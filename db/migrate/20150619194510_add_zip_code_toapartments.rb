class AddZipCodeToapartments < ActiveRecord::Migration
  def change
  	add_column :apartments, :zipcode, :integer
  end
end
