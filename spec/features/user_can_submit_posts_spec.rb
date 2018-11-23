require 'rails_helper'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit "/posts"
    click_link "New Post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
    expect(page).to have_content(Time.now.getutc)
  end
  scenario "Can submit posts with linebreak in them" do
    visit "/posts"
    click_link "New Post"
    fill_in "Message", with: "Hello! \n Goodbye!"
    click_button "Submit"
    expect(page).to have_content("Hello! \n Goodbye!")
    expect(page).to have_content(Time.now.getutc)
  end

  scenario "Can delete posts with linebreak in them" do
    visit "/posts"
    click_link "New Post"
    fill_in "Message", with: "Hello! \n Goodbye!"
    click_button "Submit"
    page.click_link('Delete', :href => '/posts/6')
    expect(page).to_not have_content("Hello! \n Goodbye!")
  end

  scenario "Can edit posts with linebreak in them" do
    visit "/posts"
    click_link "New Post"
    fill_in "Message", with: "Hello! \n Goodbye!"
    click_button "Submit"
    page.click_link('Edit', :href => '/posts/7/edit')
    fill_in "Message", with: "Ublaaaaaaa"
    click_button "Update"
    expect(page).to have_content("Ublaaaaaaa")
  end
end
