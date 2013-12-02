class UsersController < ApplicationController


  def create
    @org = Org.find(params[:org_id]) #could be :org_id?
    @user = @org.users.create(params[:user])
    redirect_to @org
  end

end
