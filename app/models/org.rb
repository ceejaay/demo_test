class Org < ActiveRecord::Base
  attr_accessible :demo, :name, :users_attributes
  has_many :accounts
  has_many :users, through: :accounts
  accepts_nested_attributes_for :accounts, :users
end
