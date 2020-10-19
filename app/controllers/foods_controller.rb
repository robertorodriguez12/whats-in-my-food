class FoodsController < ApplicationController
  def keyword_search
    @food = FoodService.get_foods(food)
    binding.pry
  end

  private

  def keyword
    params.permit(:keyword)
  end

  def food
    keyword[:keyword]
  end
end
