class Org < ActiveRecord::Base
  attr_accessible :demo, :name, :users_attributes
  has_many :users
  accepts_nested_attributes_for :users 
end
