require 'rails_helper'
require 'web_helper'

RSpec.feature "Protected views", type: :feature do
  scenario "User cannot access walls etc via url when not logged in" do
    visit('/users/1')
    expect(page).to_not have_content("Wall")
    expect(page).to_not have_content("Newsfeed")
  end
end 
