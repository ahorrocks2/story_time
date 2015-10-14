require 'rails_helper'

describe "deletes story" do
  it "deletes a story" do
    story = Story.create(:title => "A Scary Story", :author => "Julianna", :first_sentence => "On a really gross creepy hill there lived a witch cat.")
    visit story_path(story)
    click_on "Delete"
    expect(page).to_not have_content "A Scary Story"
  end
end
