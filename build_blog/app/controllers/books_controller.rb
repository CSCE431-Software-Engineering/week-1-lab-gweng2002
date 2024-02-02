class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to @book
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to @book
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    flash[:notice] = "Book was successfully deleted."
    redirect_to books_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title)
    end
  
end
