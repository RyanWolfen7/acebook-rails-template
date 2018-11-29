require 'rails_helper'
require 'web_helper'

RSpec.feature "URL slug", type: :feature do
  scenario "Url displays the current user's username when on their own wall" do
    signup
    click_link 'My Wall'
    expect(page).to have_current_path('http://www.example.com/users/winnie', url: true)
  end

  scenario "Url displays the another user's username when on their wall" do
    signup
    click_link "New Post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    click_link "Sign Out"
    click_button 'Sign up'
    fill_in(:user_firstname, with: 'Bob')
    fill_in(:user_lastname, with: 'Marley')
    fill_in(:user_username, with: 'bm')
    fill_in(:user_email, with: 'bob@bobmarley.com')
    fill_in(:user_password, with: 'bobbob')
    click_button 'Sign up'
    click_link 'News Feed'
    click_link 'winnie'
    expect(page).to have_current_path('http://www.example.com/users/winnie', url: true)
  end
end
