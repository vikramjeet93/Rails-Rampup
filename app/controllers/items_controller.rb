class ItemsController < ApplicationController

  def new
    @stack = Stack.find(params[:stack_id])
  end

  def create
    @stack = Stack.find(params[:stack_id])
    @item = @stack.items.create(item_params)
    redirect_to stack_path(@stack)
  end

  private
    def item_params
      params.require(:item).permit(:name, :description, :returnable, :quantity)
    end

end
