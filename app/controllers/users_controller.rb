class UsersController < ApplicationController
  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    #binding.pry
    redirect_to "/users/#{@user.id}"
  end

  def show
    @user = User.find(params[:id])
    @articles = @user.articles
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
