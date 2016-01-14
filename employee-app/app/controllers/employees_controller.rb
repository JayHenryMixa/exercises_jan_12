class EmployeesController < ApplicationController

  def worker
    @employee = Employee.last
  end

  def every_worker
    @employees = Employee.all
  end

end
