class StacksController < ApplicationController
  before_action :authenticate_user!

  def index
    @stacks = Stack.where(owner_id: current_user.id) | User.find(current_user.id).stacks
  end

  def show
    @stack = Stack.find(params[:id])
  end

  def new
    @stack = Stack.new
  end

  def edit
    @stack = Stack.find(params[:id])
  end

  def create
    @stack = Stack.new(stack_params.merge({owner: current_user}))
    @stack.users = User.find(params[:user_ids]) if params[:user_ids]

    if @stack.save
      redirect_to @stack
    else
      render 'new'
    end
  end

  def update
    @stack = Stack.find(params[:id])

    if @stack.update(stack_params)
      redirect_to @stack
    else
      render :edit
    end
  end

  private
    def stack_params
      params.require(:stack).permit(:name, :description)
    end
end
