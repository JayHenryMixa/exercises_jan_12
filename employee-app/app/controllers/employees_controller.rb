class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def new
  end

  def create 
    @employee = Employee.create({
      last_name: params[:last_name],
      first_name: params[:first_name],
      job_title: params[:job_title],
      salary: params[:salary],
      phone_number: params[:phone_number],
      gender: params[:gender]
      })

    flash[:success] = "New Employee Profile Created"
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update({
      last_name: params[:last_name],
      first_name: params[:first_name],
      job_title: params[:job_title],
      salary: params[:salary],
      phone_number: params[:phone_number],
      gender: params[:gender]
      })
    
    flash[:success] = "Employee Information Updated"
    redirect_to "/employees/#{@employee.id}"

    end

  def destroy
    @recipe = Recipe.find(params[:id])  
    @recipe.destroy

    redirect_to "/"
  end


end
