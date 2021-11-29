require "rails_helper"

describe User do
  it "has a valid factory" do
    build(:user).should be_valid
  end
  
  it "is invalid without the fullname" do
    build(:user, fullname: nil).should_not be_valid
  end
  it "is valid with the fullname" do
    build(:user, fullname: "testname").should be_valid
  end
  it "is not valid without an email" do
    build(:user, email: nil).should_not be_valid
  end
  it "is not valid with less than 2 characters and more than 2 characters" do
    build(:user, displayname: "a").should_not be_valid
  end
  it "is valid with more than 2 characters and less than 2 characters" do
    build(:user, displayname: "test").should be_valid
  end
end
