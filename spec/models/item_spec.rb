require 'spec_helper'

describe Item do
  describe "basic model" do
    it "has a valid factory" do
      expect( FactoryGirl.create(:item) ).to be_valid
    end

    describe "validation" do
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:name)}
    end
  end
end
