class BooksController < ApplicationController

    def index
      @books = Book.all
      @books = Book.search(params[:search])

    end

    def new
      @book = Book.new

    end
    def show
      @book= Book.find(params[:id])

    end

    def edit
      @book = Book.find(params[:id])

    end

    def create

      @book = Book.create (book_params)
      redirect_to root_path

    end

    def update
      @book = Book.find (params[:id])
      @book.update_attributes(book_params)
      redirect_to root_path

    end
    def destroy
      @book.destroy
      redirect_to root_path

    end

    private

    def book_params
      params.require(:book).permit(:title, :author, :genre, :classification, :catagory, :year, :search)
    end





end
