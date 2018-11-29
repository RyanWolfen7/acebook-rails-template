require 'rails_helper'
require 'web_helper'

RSpec.feature "Customise wall", type: :feature do
  describe "#Background color change" do
    scenario "User can change the background colour of their wall" do
      signup
      click_link "Themes"
      page.select("Pink", from: :colour)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'pink')
    end
    scenario "User can change the background colour light salmon" do
      signup
      click_link "Themes"
      page.select("LightSalmon", from: :colour)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'LightSalmon')
    end
    scenario "User can change the background colour coral" do
      signup
      click_link "Themes"
      page.select("Coral", from: :colour)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'Coral')
    end
    scenario "User can change the background colour spring green" do
      signup
      click_link "Themes"
      page.select("SpringGreen", from: :colour)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'SpringGreen')
    end
    scenario "User can change the background colour NavajoWhite" do
      signup
      click_link "Themes"
      page.select("NavajoWhite", from: :colour)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'NavajoWhite')
    end
  end

  describe "#Font styles" do
    scenario "User can change the font" do
      signup
      click_link "Themes"
      page.select("Times", from: :font)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'Times')
    end
    scenario "User can change the font to Chalkduster" do
      signup
      click_link "Themes"
      page.select("Chalkduster", from: :font)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'Chalkduster')
    end
    scenario "User can change the font to Arial Black" do
      signup
      click_link "Themes"
      page.select("Arial Black", from: :font)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'Arial Black')
    end
    scenario "User can change the font to Trattatello" do
      signup
      click_link "Themes"
      page.select("Trattatello", from: :font)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'Trattatello')
    end
    scenario "User can change the font to Hoefler Text Ornaments" do
      signup
      click_link "Themes"
      page.select("Hoefler Text Ornaments", from: :font)
      click_button "Submit"
      expect(page).to have_css('body', visible: 'Hoefler Text Ornaments')
    end
  end

end
