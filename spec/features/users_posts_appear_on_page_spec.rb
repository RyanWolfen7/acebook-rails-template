require 'rails_helper'
require 'web_helper'

RSpec.feature "Wall", type: :feature do
  scenario 'Can post an have it shown on users wall' do
    signup
    click_link "New Post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "My Wall"
    expect(page).to have_content("Hello, world!")
  end
end
