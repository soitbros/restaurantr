class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :number
      t.integer :seats

      t.timestamps null: false
    end
  end
end
