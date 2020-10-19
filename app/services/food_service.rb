class FoodService

  def self.ten_foods(food)
    foods = []
    response = get_foods(food)
    binding.pry
    if response[:foods].count > 10
      until foods.count == 10
        response[:foods].each do |food_data|
          foods << Food.new(food_data)
          break if foods.count == 10
        end
      end
    end 
  end

  def self.conn
    Faraday.new('https://api.nal.usda.gov/fdc/v1/')
  end

  def self.get_foods(food)
    response = conn.get('foods/search') do |request|
      request.headers['X-API-KEY'] = ENV['FOOD_API_Key']
      request.params['query'] = food
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
