class ChangeDateFormatInApartmentTable < ActiveRecord::Migration
  def change
  	change_column :categories, :postal_code, :string
  end
end
