class Element < ActiveRecord::Base
  attr_accessible :character_id, :name
  has_many :characters
end
