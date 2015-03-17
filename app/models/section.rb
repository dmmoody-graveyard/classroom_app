class Section < ActiveRecord::Base
  has_many :lessons
  validates :name, :presence => true
  validates :description, :presence => true
end
