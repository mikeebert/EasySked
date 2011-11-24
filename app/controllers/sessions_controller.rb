class SessionsController < ApplicationController

  def new
  end
  
  def create
    business = Business.find_by_username(params[:username])
    if business && business.authenticate(params[:password])
      session[:biz_id] = business.id
      redirect_to business_url(business), notice: "You are now logged in"
    else
      render :new, notice: "Please Try Again."
    end
  end
  
  def destroy
  end

end
