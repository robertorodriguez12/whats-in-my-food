class FoodsController < ApplicationController
  def keyword_search
    @food = FoodService.ten_foods(food)
  end

  private

  def keyword
    params.permit(:keyword)
  end

  def food
    keyword[:keyword]
  end
end
