class LineItem < ActiveRecord::Base
  belongs_to :party
  belongs_to :entree
end
