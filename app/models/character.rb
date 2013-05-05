class Character < ActiveRecord::Base
  attr_accessible :name, :series_1, :series_2
  belongs_to :element
end
