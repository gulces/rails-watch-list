class ListsController < ApplicationController
  before_action :find_list, only: [:show]

  def index
    @lists = List.all
  end

  def show; end

  def create
    @list = List.new(lists_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def new
    @list = List.new
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end

  def find_list
    @list = List.find(params[:id])
  end
end
