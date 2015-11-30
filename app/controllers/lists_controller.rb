class ListsController < ApplicationController

  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @list = List.all
  end

  def show
    @todos = @list.todos
  end

  def edit
  end

  def create
    list = List.create(list_params)
    if list.save
      redirect_to list_path(url_slug: list.url_slug)
    else
      flash[:alert] = "#{list.errors.full_messages[0]}"
      redirect_to root_path
    end
  end

  def update
  end

  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:name, :url_slug)
  end

  def set_list
    @list = List.find_by(url_slug: params[:url_slug])
  end
end
