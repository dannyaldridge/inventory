require 'spec_helper'

describe UsersController do


  describe "POST create" do
    context "with valid user attributes" do
      it "creates a new user in the database" do
        @number_of_users = User.all.length
        post 'create', user: {name: "James", password: "12345", password_confirmation: "12345"}
        expect(User.all.length).to_be > @number_of_users
      end

      it "redirects to the root path" do
      end

      it "sets the flash message to 'Thanks for signing up'" do
      end
    end

    context "with invalid user attitributes" do
      it "doesnt create a new user in the database" do
      end

      it "redirects to the users new path" do
      end
    end
  end

end
