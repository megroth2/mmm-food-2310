class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov")

    response = conn.get("/fdc/v1/foods/search", { api_key: Rails.application.credentials.usda[:key], query: params[:q] })

    # binding.pry # response.status returns 302, but the same request in postman returns json and a 200 code
    json = JSON.parse(response.body, symbolize_names: true)

    foods = json[:foods]

    @top_ten_foods = foods.ten_foods_that_contain(params[:q])
  end
end