class Student < ActiveRecord::Base
  attr_accessible :classs, :finall, :idd, :labb, :namee, :nameee, :projectt, :totall
  validates :classs, :finall, :idd, :labb, :namee, :nameee, :projectt, :presence => true
  validates :class, :finall, :projectt, :labb, numericality: { only_integer: true }
end
