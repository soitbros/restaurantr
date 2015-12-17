class Employee < ActiveRecord::Base
  has_many :parties
  has_many :covers, through: :parties
end
