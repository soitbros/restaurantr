class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :cell

      t.timestamps null: false
    end
  end
end
