require "rails_helper"

describe Item do
  it "has a valid factory" do
    # category = build(:category, title: "test")
    build(:item).should_not be_valid
    
  end
  # it "is invalid without title" do
  #   build(:item, title: nil).should_not be_valid
  # end
  # it "is valid with title" do
  #   build(:item, title: "test").should be_valid
  # end
  # it "is invalid without description" do
  #   build(:item, description: nil).should_not be_valid
  # end
  # it "is valid with description" do
  #   build(:item, description: "test").should be_valid
  # end
  # it "is invalid without price" do
  #   build(:item, price: nil).should_not be_valid
  # end
  # it "is valid with price" do
  #   build(:item, price: 100).should be_valid
  # end
  # it "should not be valid id it's duplicate" do
  #   item = Item.create!(title: "test", description: "this is test", price: 100)
  #   item2 = Item.create(title: "test", description: "this is test", price: 100)
  #   item2.should_not be_valid
  #   item2.errors[:title].should include("has already been taken")
  # end
  # it "should be valid if it's unique" do
  #   item = Item.create!(title: "test", description: "this is test", price: 100)
  #   item2 = Item.create(title: "test2", description: "this is test", price: 100)
  #   item2.should be_valid
  # end
  # it "should not be valid if price is 0" do
  #   item = Item.create(title: "test", description: "this is test", price: 0)
  #   item.should_not be_valid
  # end
  # it "should be valid if price is greater than 0" do
  #   item = Item.create(title: "test", description: "this is test", price: 10)
  #   item.should be_valid
  # end
  # it "should not be valid without a category" do
  #   build(:item, category_id: nil).should_not be_valid
  # end
  # it "should belong to a category" do
  #   item = Item.reflect_on_association(:category)
  #   expect(item.macro).to eq(:belongs_to)
  # end
end
