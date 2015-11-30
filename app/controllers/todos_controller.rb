class TodosController < ApplicationController

  before_action :set_todo, only: [:show, :edit, :update, :destroy]
  before_action :set_list, only: [:create]

  def index
  end

  def show
  end

  def edit
  end

  def create
    todo = Todo.create(todos_params)
    if todo.save
      redirect_to list_path(url_slug: @list.url_slug)
    else
      flash[:alert] = "#{todo.errors.full_messages[0]}"
      redirect_to list_path(url_slug: @list.url_slug)
    end
  end

  def update
  end

  def destroy
  end

  private

  def todos_params
    params.require(:todo).permit(:name, :completed, :list_id)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def set_list
    @list = List.find_by(url_slug: params[:list_url_slug])
  end
end
