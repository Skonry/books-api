class BooksController < ApplicationController

  def index 
    books = Book.all
    json_response({books: books})
  end

  def create
    book = Book.create(book_params)
    json_response({book: book})
  end

  def show
    book = Book.find(params[:book_id])
    json_response({book: book})
  end

  def update
    book = Book.find(params[:book_id])
    book.update!(book_params)
    json_response({book: book})
  end

  def destroy
    book = Book.find(params[:book_id])
    book.destroy
    json_response({result: 'book deleted'})
  end

  private

  def book_params
    params.require(:book).permit(:title, :author)
  end
  
end
