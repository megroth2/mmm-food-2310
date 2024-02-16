class FoodsController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.headers["X-API-KEY"] = Rails.application.credentials.usda[:key]
    end

    response = conn.get("api/v1/merchants")

    json = JSON.parse(response.body, symbolize_names: true)

    @merchants = json[:data]
  end


# Food.where("[:foods][:ingredients] LIKE ?", "%#{ingredient}%").sort_by(relevance).limit(10)