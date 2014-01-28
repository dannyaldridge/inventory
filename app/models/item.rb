class Item < ActiveRecord::Base
  validates :name, presence: true, uniquness: true
end
