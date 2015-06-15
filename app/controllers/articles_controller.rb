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
    article_id = params[:id]
    @article = Article.find(article_id)
    render :edit
  end

  def update
    article_id = params[:id]
    article = Article.find(article_id)
    article.update(article_params)
    redirect_to "/users/#{current_user.id}"
  end

  def show
    render :show
  end

  def destroy
    article_id = params[:id]
    Article.destroy(Article.find(article_id))
    redirect_to "/users/#{current_user.id}"
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end
