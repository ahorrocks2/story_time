require 'rails_helper'

describe 'the add a story path' do
  it 'allows the user to add a story based on an image' do
    visit stories_path
    click_on 'Add a Story'
    fill_in 'Title', :with => 'A Pretty Pretty Princess'
    fill_in 'Author', :with => 'Alisa'
    fill_in 'First sentence', :with => 'There once was a princess.'
    click_on 'Create Story'
    expect(page).to have_content 'A Pretty Pretty Princess'
  end

  it 'shows an error if something is not filled in' do
    visit stories_path
    click_on 'Add a Story'
    fill_in 'Title', :with => ''
    fill_in 'Author', :with => ''
    fill_in 'First sentence', :with => ''
    click_on 'Create Story'
    expect(page).to have_content 'errors'
  end

end
