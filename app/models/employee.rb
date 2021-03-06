class Employee < ActiveRecord::Base
  has_secure_password
  has_many :parties
  has_many :covers, through: :parties
  has_many :line_items, through: :parties
end
