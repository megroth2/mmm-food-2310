require 'rails_helper'

RSpec.describe "foods index page" do
  it "lists ten foods", :vcr do
    visit "/foods"

    expect(status_code).to eq(200)

    expect(page).to have_content("GTIN/UPC code: 451884") # checks the values of the first food returned
    expect(page).to have_content("Description: SWEET POTATOES")
    expect(page).to have_content("Brand Owner: NOT A BRANDED ITEM")
    expect(page).to have_content("Ingredients: ")

    expect(page).to have_content("GTIN/UPC code: ", count: 10) # checks that 10 foods are returned total
    expect(page).to have_content("Description: ", count: 10)
    expect(page).to have_content("Brand Owner: ", count: 10)
    expect(page).to have_content("Ingredients: ", count: 10)

    expect(page).to_not have_content("GTIN/UPC code: 1662504") # checks that the 11th item doesn't appear
  end
end