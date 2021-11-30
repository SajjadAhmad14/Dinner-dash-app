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
  it "is not valid without a password" do
    build(:user, password_digest: nil).should_not be_valid
  end
  it "is valid with a password" do
    build(:user, password_digest: "123456").should be_valid
  end
  it "is not valid with less than 6 characters and more than 10 characters" do
    build(:user, password_digest: "12345").should_not be_valid
  end
  it "is valid with 6 or more characters and less than or 10 characters" do
    build(:user, password_digest: "123456").should be_valid
  end
  it "should have a unique email" do
    user = User.create!(fullname:"test", email:"a@a.com", password_digest:"123456", displayname:"test")
    user2 = User.create(fullname:"test", email: "a@a.com", password_digest: "123456", displayname:"test")
    user2.should_not be_valid
    user2.errors[:email].should include("has already been taken")
  end
  it "is not valid with less than 2 characters and more than 2 characters" do
    build(:user, displayname: "a").should_not be_valid
  end
  it "is valid with more than 2 characters and less than 2 characters" do
    build(:user, displayname: "test").should be_valid
  end
end
