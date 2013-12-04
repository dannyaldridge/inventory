FactoryGirl.define do
  factory :team do
    sequence :name do |n|
      "Junior#{n}"
    end
  end
end