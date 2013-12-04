class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name 
  has_many :orgs, through: :accounts
  belongs_to :current_org, class_name: "Org"
end
