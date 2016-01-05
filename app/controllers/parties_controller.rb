class PartiesController < ApplicationController

  def edit
    @party = Party.find(params[:id])
    @check = @party.line_items.map(&:entree).map(&:price).sum.in(:usd)
    @tax = @party.line_items.map(&:entree).map(&:price).sum.in(:usd) * 0.0875
    @tip_fine = @party.line_items.map(&:entree).map(&:price).sum.in(:usd) * 0.15
    @tip_good = @party.line_items.map(&:entree).map(&:price).sum.in(:usd) * 0.20
    @tip_great = @party.line_items.map(&:entree).map(&:price).sum.in(:usd) * 0.25
    @total = @check + @tax
    @check_euro = @party.line_items.map(&:entree).map(&:price).sum.in(:usd).to(:eur)
    @tax_euro = @party.line_items.map(&:entree).map(&:price).sum.in(:usd).to(:eur) * 0.0875
    @tip_fine_euro = @party.line_items.map(&:entree).map(&:price).sum.in(:usd).to(:eur) * 0.15
    @tip_good_euro = @party.line_items.map(&:entree).map(&:price).sum.in(:usd).to(:eur) * 0.20
    @tip_great_euro = @party.line_items.map(&:entree).map(&:price).sum.in(:usd).to(:eur) * 0.25
    @total_euro = @check_euro + @tax_euro
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
