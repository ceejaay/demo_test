class DemosController < ApplicationController
  def new
    @org = Org.new
    @org.users.new(params[:user])
  end 
  
  def create
    @org = Org.new(params[:org])
    @org.demo = true
    @org.save
    Account.create(org_id: @org.id, user_id: @org.user.last.id)
    redirect_to @org
  end
end
