require 'rails_helper'

# RSpec.describe "merchants index page" do
#   it "lists all merchants", :vcr do
#     visit "/merchants"

#     expect(status_code).to eq(200)

#     expect(page).to have_link("Schroeder-Jerde") # merchant name
#     expect(page).to have_link("Klein, Rempel and Jones") # merchant name

#     click_link("Schroeder-Jerde") # merchant name

#     expect(current_path).to eq("/merchants/#{id}") #interpolate id

#     expect(page).to have_content("Merchant #{id}") #interpolate id

#     # response.body[:data].first[:id] ??
#   end
# end