class AddManagerServerClass < ActiveRecord::Migration
  def change
    add_column :employees, :rights_class, :integer
  end
end
