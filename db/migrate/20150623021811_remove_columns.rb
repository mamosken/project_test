class RemoveColumns < ActiveRecord::Migration
 def self.up
  remove_column :locations, :zipcode
end
end
