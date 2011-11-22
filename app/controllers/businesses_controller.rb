class BusinessesController < ApplicationController
  def new
    @business = Business.new
  end
  
  def create
    @business = Business.new(params[:business])
    @business.save
    redirect_to @business, notice: "Thanks for building a new company!"
  end

  def edit
    @business = Business.find(params[:id])
  end

  def show
    @business = Business.find(params[:id])
  end
  
  def update
    @business = Business.find(params[:id])
    @business.update_attributes(params[:business])
    @business.save
    redirect_to @business, :notice => "You just edited your info."
  end

end
