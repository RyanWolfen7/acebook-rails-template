require 'rails_helper'
require 'web_helper'

RSpec.feature "URL slug", type: :feature do
  scenario "Url displays the user's username when on their wall" do
    signup
    click_link 'My Wall'
    expect(page).to have_current_path('http://www.example.com/users/winnie', url: true)
  end
end
