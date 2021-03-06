require 'rails_helper'
require 'spec_helper'

feature 'The Wall' do
  scenario "Access another user's wall by clicking on their username from newsfeed" do
    signup
    click_link 'News Feed'
    click_link 'jl'
    expect(page).to have_content("jl's Wall")
  end

  scenario "User can post on another user's wall" do
    signup
    click_link 'News Feed'
    click_link 'jl'
    fill_in 'Message', with: "hello jl"
    click_button "Submit"
    click_link 'jl'
    expect(page).to have_content("hello jl")
  end
end
