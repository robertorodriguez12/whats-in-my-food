require "rails_helper"

RSpec.describe "Foods conttoller", type: :feature do
  describe "As a visitor" do
    it "I can search for an ingredient and see a list of foods that contain that ingredient " do
      visit '/'
      fill_in :keyword, with: 'sweet potatoes'
      click_on 'Search'
      expect(page).to have_content('hello')
    end

  end
end
