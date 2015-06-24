class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :apartments, :zipcode, :postal_code
  end
end
