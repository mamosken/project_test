class AddCategoryIdToApartments < ActiveRecord::Migration
  def change
    add_column :apartments, :category_id, :integer
  end
end
