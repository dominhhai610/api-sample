class TodosController < ApplicationController


  # GET TODOS
  def index
    @todos = Todo.all
    json_response(@todos)
  end

  # GET todos/id
  def show
    json_response(@todo)
  end

  # PUT todos/id
  def update
    @todo.update(todo_params)
    head :no_content
  end

  # DELETE todos/id
  def delete
    @todo.destroy
    head :no_content
  end


  private
  def todo_params
    params.require(:todo).permit(:title, :created_by)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
