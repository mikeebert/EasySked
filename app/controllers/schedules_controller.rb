class SchedulesController < ApplicationController
  def new
    @schedule = Schedule.new  
  end

  def create
    @schedule = Schedule.new(params[:schedule])
    @schedule.save
    redirect_to business_url, notice: "Schedule Updated"
  end

end
