class AddLineItemFired < ActiveRecord::Migration
  def change
    add_column :line_items, :fired, :integer
  end
end
