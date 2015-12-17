class PartiesController < ApplicationController

  # def create
  #   Party.create(party_params)
  #   redirect_to employees_path
  # end

  def destroy
    Party.delete(params[:id])
    redirect_to employees_path
  end

  def create
    current_employee.parties.create(party_params)
    redirect_to employees_path
  end

  private
  def party_params
    params.require(:party).permit(:guests, :paid, :employee_id, :entree_id, :cover_id)
  end

end
