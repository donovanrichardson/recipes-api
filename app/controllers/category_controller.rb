class CategoryController < ApplicationController
  def create
    @cat = Category.new category_params

    if @cat.save
      render :json =>{
          :response => 'successfully added',
          :data=> @cat
      }
    else
      render :json =>{
          :response => 'could not add'
      }
    end
  end
  def index
    @cats = Category.all
    if @cats.empty?
      render :json =>{
          :response => 'there are no categories to show'
      }
    else
      render :json =>{
          :response => 'here are the categories',
          :data=> @cats
      }
    end
  end
  def show
    @cat = Category.find_by_id params[:id]
    if @cat
      render :json =>{
          :response => 'here is the category',
          :data=> @cat
      }
    else
      render :json =>{
          :response => 'unable to find a category with that id'
      }
    end
  end
  def update
    @cat = Category.find_by_id params[:id]
    if @cat
      @cat.update(category_params)
      render :json =>{
          :response => 'here is the category',
          :data=> @cat
      }
    else
      render :json =>{
          :response => 'unable to find a category to update with that id'
      }
    end
  end
  def destroy
    @cat = Category.find_by_id params[:id]
    if @cat

      render :json =>{
          :response => 'here is the category that you deleted',
          :data=> @cat.destroy
      }
    else
      render :json =>{
          :response => 'unable to find a category to destroy with that id'
      }
    end
  end

  private

  def category_params
    params.permit :title, :description, :created_by
  end

end
