class TodosController < ApplicationController
  before_action :set_todos, only: %i[show update destroy]

  # GET /todos
  def index
    @todos = current_user.todos
    json_response(@todos)
  end

  # POST /todos
  def create
    @todos = current_user.todos.create!(todos_params)
    json_response(@todos, :created)
  end

  # GET /todos/:id
  def show
    json_response(@todos)
  end

  # PUT /todos/:id
  def update
    @todos.update(todos_params)
    head :no_content
  end

  # DELETE /todos/:id
  def destroy
    @todos.destroy
    head :no_content
  end

  private

  def todos_params
    # whitelist params
    params.permit(:name, :description, :deadline)
  end

  def set_todos
    @todos = Todo.find(params[:id])
  end
end
