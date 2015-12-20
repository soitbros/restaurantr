class Party < ActiveRecord::Base
  belongs_to :employee
  belongs_to :entree
  belongs_to :cover
  has_many :line_items
  has_many :entrees, through: :line_items
end
