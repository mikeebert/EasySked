class EmployeesController < ApplicationController

  before_filter :set_business
  
  def index
    @employees = @business.employee.all
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = @business.employees.find(params[:id])
  end

  def create
    @employee = @business.employees.build(params[:employee])
    @employee.payrate = (@employee.payrate/100)
    @employee.save
    redirect_to business_url(session[:biz_id]), notice: "Employee successfully created."
  end
  
  def update
    @employee = @business.employee.find(params[:id])
    @employee.update_attributes(params[:employee])
    @employee.save
    redirect_to business_url(session[:biz_id]), notice: "Employee successfully updated."
  end
  
  def destroy
    @employee = @business.employee.find(params[:id])
    @employee.destroy
    redirect_to business_url(session[:biz_id]), notice: "Employee deleted."
  end
  
end
