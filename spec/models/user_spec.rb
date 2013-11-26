require 'spec_helper'

describe User do
  it "has a valid factory" do
    expect( FactoryGirl.create(:user) ).to be_valid
  end

  # describe "validation" do
  #   it { should validate_presence_of :name }
  #   it { should validate_uniqueness_of :name }
  # end


end


