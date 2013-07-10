class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end


  def create
    @category = Category.new(params[:category].permit!)
    if @category.save
      redirect_to root_path, notice: "Category has been created."
    else
      render :new
    end

  end

  private


end
