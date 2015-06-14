class ArticlesController < ApplicationController
  def new
    render :new
  end

  def create
    redirect :show
  end

  def edit
    render :edit
  end

  def show
    render :show
  end

  def destroy
  end
end
