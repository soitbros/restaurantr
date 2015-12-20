class LineItemsController < ApplicationController

  def update
    @line_item = LineItem.find(params[:id])
    @line_item.update(line_item_params)
    redirect_to employees_path
  end

  def destroy
    LineItem.delete(params[:id])
    redirect_to employees_path
  end

  private
  def line_item_params
    params.require(:line_item).permit(:fired)
  end

end
