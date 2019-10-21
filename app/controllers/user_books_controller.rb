class UserBooksController < ApplicationController

  def index
    user_books = @current_user.books
    json_response({user_books: user_books})
  end
  
  def addBook
    book = Book.find(params[:book_id])
    @current_user.books << book
  end

  def removeBook
    book = Book.find(params[:book_id])
    @current_user.books.delete(book)
  end

end