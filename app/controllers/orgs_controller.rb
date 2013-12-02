class OrgsController < ApplicationController

  def new
    @org = Org.new
    @org.demo = true
    @org.users.new(params[:user])
  end

  def create
    @org = Org.new(params[:org])
    @org.demo = true
    @org.save
    redirect_to @org
  end

  def show
    @org = Org.find(params[:id])
  end

  def index
    @org = Org.all
  end



end
