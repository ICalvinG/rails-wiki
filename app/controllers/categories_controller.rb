class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(name: params[:name])

    # ADMIN CAN ONLY CREATE A CATEGORY
    if category
      redirect category_url(category)
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles

    render 'show'
  end

  def destroy
    Category.find(params[:id])
  end

end
