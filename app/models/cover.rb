class Cover < ActiveRecord::Base
  has_many :parties
  has_many :employees, through: :parties
  has_many :entrees, through: :parties
end
