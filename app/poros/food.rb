class Food
  attr_reader :gtin_upc_code, :description, :brand_owner, :ingredients

  def initialize(data)
    @gtin_upc_code = data[:gtinUpc]
    @description = data[:description]
    @brand_owner = data[:brandOwner]
    @ingredients = data[:ingredients]
  end

  def ten_foods_that_contain(ingredient)
    Food.where("[:foods][:ingredients] LIKE ?", "%#{ingredient}%").limit(10)
  end
end