class PostBooksController < ApplicationController

    def index
      @books = Book.all
      @book = Book.new

    end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to post_books_path(@book), notice: "You have created book successfully."
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.user_id = current_user.id
    @book.update(book_params)
    redirect_to post_books_path(@book.id), notice: "You have updated book successfully."
  end

# No route matches [PATCH] "/post_books/1/edit"

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to post_books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
