class Entree < ActiveRecord::Base
  has_many :covers, through: :parties
  has_many :line_items
end
