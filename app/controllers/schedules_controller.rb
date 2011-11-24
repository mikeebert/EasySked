class SchedulesController < ApplicationController

  before_filter :set_business
  
  def new
    @schedule = Schedule.new  
    @employee = Employee.find(params[:employee_id])
    payrate = params[:rate_this_week]
    @schedule.employee = @employee
    @schedule.rate_this_week = payrate
  end

  def create
    @schedule = Schedule.new(params[:schedule])
    @schedule.save
    redirect_to business_url(@business), notice: "Schedule Updated"
  end

end
