class EntreesController < ApplicationController

  def create
    Entree.create(entree_params)
    redirect_to employees_path
  end

  def destroy
    Entree.delete(params[:id])
    redirect_to employees_path
  end

  private
  def entree_params
    params.require(:entree).permit(:item, :category, :price, :allergen)
  end

end
