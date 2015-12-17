class CoversController < ApplicationController

  def create
    Cover.create(cover_params)
    redirect_to employees_path
  end

  def destroy
    Cover.delete(params[:id])
    redirect_to employees_path
  end

  private
  def cover_params
    params.require(:cover).permit(:number, :seats)
  end

end
