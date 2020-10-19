class FoodsController < ApplicationController
  def keyword_search
    response = conn.get('/v1/foods/search?') do |faraday|
      faraday.params['api_key'] = ENV['FOOD_Key']
      faraday.params['query'] = search_params[:keyword]
    end
    binding.pry
    j = JSON.parse(response.body, symbolize_names: true)

  end

  private

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/fdc')
  end

  def search_params
    params.permit(:keyword)
  end
end
