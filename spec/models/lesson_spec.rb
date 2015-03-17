require 'rails_helper'

describe Lesson do
  it { validates presence_of :number }
  it { validates presence_of :name }
  it { validates presence_of :content }
end
