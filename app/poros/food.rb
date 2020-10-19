class Food

  def initialize(data)
    @upc_code = data[:gtinUpc]
    @desctiption = data[:description]
    @brand = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

end
