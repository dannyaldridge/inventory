FactoryGirl.define do
  factory :team do
    sequence :name do |n|
      "Junior#{n}"
    end

    trait :invalid do
      name nil
    end
  end

end
