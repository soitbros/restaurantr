class PartiesController < ApplicationController

  def edit
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
    @party.update(party_params)
    redirect_to edit_employee_party_path(params[:employee_id],params[:id])
  end

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
    params.require(:party).permit(:guests, :paid, :name, :employee_id, :cover_id, entree_ids: [])
  end

end
