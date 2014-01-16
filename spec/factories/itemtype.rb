FactoryGirl.define do
  factory :itemtype do
    sequence :name do |n|
      "Helmet#{n}"
    end
  end
end