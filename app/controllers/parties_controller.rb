class PartiesController < ApplicationController

  def edit
    @party = Party.find(params[:id])
    @check = @party.line_items.map(&:entree).map(&:price).sum
    @tax = @party.line_items.map(&:entree).map(&:price).sum * 0.0875
    @tip_fine = @party.line_items.map(&:entree).map(&:price).sum * 0.15
    @tip_good = @party.line_items.map(&:entree).map(&:price).sum * 0.20
    @tip_great = @party.line_items.map(&:entree).map(&:price).sum * 0.25
    @total = @check + @tax
  end

  def update
    @party = Party.find(params[:id])
    @party.update(party_params)
    redirect_to employees_path
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
