require "rails_helper"

RSpec.describe "Navigation test", type: :feature do
  describe "As a visitor" do
    it "I can fill in the search form and click search. Then I am taken to a result page" do
      visit '/'
      fill_in :q, with: 'sweet potatoes'
      click_on 'Search'
      expect(current_path).to eq('/foods')
    end

  end
end
