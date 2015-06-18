class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.text :draft
      t.belongs_to :apartment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
