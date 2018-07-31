class BooksController < ApplicationController

    def index
      @books = Book.all
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

    end

    private

    def book_params
      params.require(:book).permit(:title, :author, :genre, :classification, :catagory, :year)
    end




end