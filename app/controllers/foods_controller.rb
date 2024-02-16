# class MerchantsController < ApplicationController
#   def index
#     conn = Faraday.new(url: "http://localhost:3000/")

#     response = conn.get("api/v1/merchants")

#     json = JSON.parse(response.body, symbolize_names: true)

#     @merchants = json[:data]
#   end

#   def show
#     conn = Faraday.new(url: "http://localhost:3000/")

#     response = conn.get("api/v1/merchants/#{params[:id]}/items")

#     json = JSON.parse(response.body, symbolize_names: true)

#     @items = json[:data]
#   end


# pass in ingredient as an argument to retrieve a list of the 10 most relevant foods that include that ingredient

# Food.where("[:foods][:ingredients] LIKE ?", "%#{ingredient}%").sort_by(relevance).limit(10)

# conn = Faraday.new(url: "https://developer.nrel.gov") do |faraday|
#   faraday.headers["X-API-KEY"] = Rails.application.credentials.usda[:key]
# end