FactoryGirl.define do
  factory :item do
    sequence :name do |n|
      "Riddel#{n}"
    size "Medium"
    label "RM1"
    description "Gold Helmet"
    quantity "1"
    date "09/01/14"
    type "Helmet"
    team "Kitted"
    end
  end
end