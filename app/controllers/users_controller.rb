class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path(current_user)
  end

  def index
    @users = User.find(params[:id])
    @book = Book.new
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
