class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
      faraday.headers["X-API-KEY"] = Rails.application.credentials.usda[:key]
    end
  
    response = conn.get("/fdc/v1/foods/search", { query: params[:q] })

    json = JSON.parse(response.body, symbolize_names: true)

    foods = json[:foods]

    @top_ten_foods = foods.ten_foods_that_contain(params[:q])
  end
end