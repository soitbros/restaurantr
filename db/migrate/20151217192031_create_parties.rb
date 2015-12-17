class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guests
      t.integer :paid
      t.references :employee, index: true, foreign_key: true
      t.references :entree, index: true, foreign_key: true
      t.references :cover, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
