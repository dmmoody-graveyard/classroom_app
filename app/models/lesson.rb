class Lesson < ActiveRecord::Base
  validates :number, :presence => true
  validates :name, :presence => true
  validates :content, :presence => true
end
