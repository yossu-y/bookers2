class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.page(params[:book])
  end

  def show
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to ""
  end
  
  private
  
  def books_params
    params.require(:book).permit(:title, :option)
  end
  
end
