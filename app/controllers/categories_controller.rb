class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def index
    @categories = Category.all
  end

  def create

  end


  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:content)
  end
end