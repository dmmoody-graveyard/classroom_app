require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_on "Create a New Lesson"
    fill_in "Number", :with => 4
    fill_in "Name", :with => "Fun Class"
    fill_in "Content", :with => "Only fun stuff"
    click_on "Create Lesson"
    expect(page).to have_content 'Fun'
  end

  it "gives error when no number is entered" do
    visit new_lesson_path
    fill_in "Name", :with => "Fun Class"
    fill_in "Content", :with => "Only fun stuff"
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

  it "gives error when no name is entered" do
    visit new_lesson_path
    fill_in "Number", :with => 4
    fill_in "Content", :with => "Only fun stuff"
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end

  it "gives error when no content is entered" do
    visit new_lesson_path
    fill_in "Number", :with => 4
    fill_in "Name", :with => "Fun Class"
    click_on 'Create Lesson'
    expect(page).to have_content 'errors'
  end
end
