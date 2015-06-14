class ArticlesController < ApplicationController
  include SessionsHelper
  
  def new
    @user = current_user
    @article = Article.new
    render :new
  end

  def create
    @article = Article.create(article_params)
    @user = current_user
    @user.articles.push(@article)
    redirect_to "/users/#{@user.id}"
  end

  def edit
    render :edit
  end

  def show
    render :show
  end

  def destroy
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
