class OrgsController < ApplicationController

  def new
    @org = Org.new
    @org.demo = true
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



end
