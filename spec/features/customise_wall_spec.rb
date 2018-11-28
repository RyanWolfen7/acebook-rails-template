require 'rails_helper'
require 'web_helper'

RSpec.feature "Customise wall", type: :feature do
  scenario "User can change the background colour of their wall" do
    signup
    click_link "Themes"
    page.select("Blue", from: "colours")
    click_link "Save"
    expect(page).to have_css('blue')
  end
end 
