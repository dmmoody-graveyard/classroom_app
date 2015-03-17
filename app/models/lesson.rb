class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :number, :presence => true
  validates :name, :presence => true
  validates :content, :presence => true
end
