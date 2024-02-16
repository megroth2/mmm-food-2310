require "rails_helper"

RSpec.describe Food do

  before(:each) do
    attrs = {
      gtinUpc: "832298010009",
      description: "SWEET POTATOES",
      brandOwner: "NOT A BRANDED ITEM",
      ingredients: "nothing"
    }

    @food = Food.new(attrs)
  end

  it "exists" do
    expect(@food).to be_a(Food)
    expect(@food.gtin_upc_code).to eq("832298010009") # why are these nil?
    expect(@food.description).to eq("SWEET POTATOES")
    expect(@food.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(@food.ingredients).to eq("nothing")
  end

  xit "returns ten foods that contain a given ingredient" do
    # Do I need to set up factory bot and faker to properly test this? Will come back to it later
  end
end