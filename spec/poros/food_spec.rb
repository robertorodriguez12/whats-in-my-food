require "rails_helper"

RSpec.describe Food do
    it "exists" do
      attr = {
        upc_code: 12345,
        description: 'Delicious',
        brand: 'Jiffy',
        ingredients: 'peanut'
      }

      food = Food.new(attr)
      expect(food).to be_a(Food)
      expect(food.description).to eq('Delicious')
    end

end
