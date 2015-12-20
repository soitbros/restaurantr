class EmployeesController < ApplicationController

  def index
    @employee = Employee.new
    @employees = Employee.all
    @entree = Entree.new
    @entrees = Entree.all
    @cover = Cover.new
    @covers = Cover.all
    @party = Party.new
    @parties = Party.all
    @line_items = LineItem.all
  end

  def create
    Employee.create(employee_params)
    redirect_to employees_path
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    Employee.update(employee_params)
    redirect_to employees_path
  end

  def destroy
    Employee.delete(params[:id])
    redirect_to employees_path
  end

  private
  def employee_params
    params.require(:employee).permit(:username, :password, :email, :cell, :rights_class)
  end

end
