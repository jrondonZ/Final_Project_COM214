class TodosController < ApplicationController
  before_action :require_login

  def index
  @todos = current_user.todos
  end
  
  def new
    @todo = current_user.todos.new
  end

  def create
    @todo = current_user.todos.new(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render :new
    end
  end

  def show
    @todo = current_user.todos.find(params[:id])
  end

  def edit
    @todo = current_user.todos.find(params[:id])
  end

  def update
    @todo = current_user.todos.find(params[:id])
    if @todo.update(todo_params)
      redirect_to todo_path(@todo)
    else
      render :edit
    end
  end

  def destroy
    @todo = current_user.todos.find(params[:id])
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todos = current_user.todo.where(completed: true)
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :priority, :completed, :category_id)
  end
end