class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :set_business

  def set_business
    @business = Business.find_by_id(session[:biz_id])
  end

end
