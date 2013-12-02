class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :prerequisite_attributes
  belongs_to :org
end
