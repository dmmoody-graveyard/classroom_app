require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    lesson = Lesson.create(:number => 4, :name => "Only Fun Stuff", :content => "The best fun stuff")
    visit lesson_path(lesson)
    click_on "Update this lesson"
    fill_in "Number", :with => 10
    click_on "Update Lesson"
    expect(page).to have_content 'successfully updated'
  end

  it "edits a lesson" do
    lesson = Lesson.create(:number => 4, :name => "Only Fun Stuff", :content => "The best fun stuff")
    visit lesson_path(lesson)
    click_on "Update this lesson"
    fill_in "Name", :with => "Fun Stuff"
    click_on "Update Lesson"
    expect(page).to have_content 'successfully updated'
  end

  it "edits a lesson" do
    lesson = Lesson.create(:number => 4, :name => "Only Fun Stuff", :content => "The best fun stuff")
    visit lesson_path(lesson)
    click_on "Update this lesson"
    fill_in "Content", :with => "Only the best fun stuff"
    click_on "Update Lesson"
    expect(page).to have_content 'successfully updated'
  end

  it "gives error when no number is entered" do
    lesson = Lesson.create(:number => 4, :name => "Only Fun Stuff", :content => "The best fun stuff")
    visit lesson_path(lesson)
    click_on "Update this lesson"
    fill_in "Number", :with => ''
    click_on "Update Lesson"
    expect(page).to have_content 'errors'
  end

  it "gives error when no number is entered" do
    lesson = Lesson.create(:number => 4, :name => "Only Fun Stuff", :content => "The best fun stuff")
    visit lesson_path(lesson)
    click_on "Update this lesson"
    fill_in "Name", :with => ''
    click_on "Update Lesson"
    expect(page).to have_content 'errors'
  end

  it "gives error when no number is entered" do
    lesson = Lesson.create(:number => 4, :name => "Only Fun Stuff", :content => "The best fun stuff")
    visit lesson_path(lesson)
    click_on "Update this lesson"
    fill_in "Content", :with => ''
    click_on "Update Lesson"
    expect(page).to have_content 'errors'
  end
end
