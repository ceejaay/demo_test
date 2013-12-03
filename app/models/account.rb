class Account < ActiveRecord::Base
  attr_accessible :org_id, :user_id
  belongs_to :org
  belongs_to :user
 
end
