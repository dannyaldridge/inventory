FactoryGirl.define do
	factory :team do 
		sequecne :name do |n|
			"Junior Kitted#{n}"
		end
	end
end