class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url: "https://api.nal.usda.gov/fdc") do |faraday|
      faraday.headers["X-API-KEY"] = Rails.application.credentials.usda[:key]
    end
  
    response = conn.get("/fdc/v1/foods/search", { query: params[:q] })

    json = JSON.parse(response.body, symbolize_names: true)
    
    @foods = json[:foods].map { |food_data| Food.new(food_data) } # not sure why @foods = json[:foods] wasn't working
    # binding.pry

    # commented this out since its not recognizing this method. Trying to get it to display all foods in the view first.
    # @top_ten_foods = @foods.ten_foods_that_contain(params[:q])
  end
end