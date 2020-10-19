class FoodService
  def self.get_foods(food)
    response = connection.get('foods/search') do |request|
      request.headers['X-API-KEY'] = ENV['FOOD_API_Key']
      request.params['query'] = food
    end
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.connection
    Faraday.new('https://api.nal.usda.gov/fdc/v1/')
  end
end
