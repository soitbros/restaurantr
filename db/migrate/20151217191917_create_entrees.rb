class CreateEntrees < ActiveRecord::Migration
  def change
    create_table :entrees do |t|
      t.string :item
      t.string :category
      t.integer :price
      t.string :allergen

      t.timestamps null: false
    end
  end
end
