Given(/^I go to the sign up page$/) do
  @user = User.create!({
                 :login => "James",
                 :password => "123456",
                 :password_confirmation => "123456"
               })
end