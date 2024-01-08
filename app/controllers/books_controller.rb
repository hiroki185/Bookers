class BooksController < ApplicationController

  def new  #投稿フォーム + 投稿一覧
    @book = Book.new
    @books = Book.all
  end

  def create #投稿フォーム + 投稿一覧

    book = Book.new(book_params)
    book.save
    redirect_to '/books/new'

  end

  def show #詳細ページ
    @book = Book.find(params[:id])
  end

  def index
  end

  def show #詳細ページ
    @book = Book.find(params[:id])
  end

  def edit #編集ページ
    @book = Book.find(params[:id])
  end

   def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to show_list_path(book.id)
  end



def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books/new'
end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
