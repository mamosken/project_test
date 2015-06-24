class AddColumnToCategories < ActiveRecord::Migration
  def change
  	 add_column :categories, :postal_code, :string
  end
end
