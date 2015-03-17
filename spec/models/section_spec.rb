require 'rails_helper'

describe Section do
  it { should have_many :lessons }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
