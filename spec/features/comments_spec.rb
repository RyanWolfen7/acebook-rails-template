require 'rails_helper'
require 'web_helper'

RSpec.feature "Commenting Son!", type: :feature do
  describe "#Commenting on post" do
    scenario 'user can comment on a post' do
      signup
      click_link "News Feed"
      click_link "Comment"
      fill_in "message", with: "Comment Son"
      click_button "Submit"
      expect(page).to have_content("Comment Son")
    end
  end
end
