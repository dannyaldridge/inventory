require 'spec_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it "is a valid user" do
  	expect(FactoryGirl.create(:user_password)).to be_valid
  end
end


