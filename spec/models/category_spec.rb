require "rails_helper"

describe Category do
  it "has a valid factory" do
    build(:category).should be_valid
  end
  it "is not valid without title" do
    build(:category, title: nil).should_not be_valid
  end
end
