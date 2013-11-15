FactoryGirl.define do
  factory :user do
    name "James"
    password "123456"
    password_confirmation "123456"

    trait :password_confirmation_does_not_match do
    	password_confirmation "not matching"
    end
  	
  	factory :invalid_user, traits: [:password_confirmation_does_not_match]
  end

  factory :non_user do
    name "George"
    password "false"
  end
end
