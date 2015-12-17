class Party < ActiveRecord::Base
  belongs_to :employee
  belongs_to :entree
  belongs_to :cover
end
