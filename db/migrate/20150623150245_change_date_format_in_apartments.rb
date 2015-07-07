class ChangeDateFormatInApartments < ActiveRecord::Migration
  def change
  	change_column :apartments, :postal_code, :string
  end
end
