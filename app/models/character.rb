class Character < ActiveRecord::Base
  attr_accessible :name, :series_1, :series_2, :element_id
  belongs_to :element

  validates :name, :presence => true
  validates_presence_of :element
end
