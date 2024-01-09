class BooksController < ApplicationController

    def index  #投稿フォーム + 投稿一覧
    @book = Book.new
    @books = Book.all
  end

  def create #投稿フォーム + 投稿一覧
        @books = Book.all

        @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else

      render :index
    end

  end

  def show #詳細ページ
    @book = Book.find(params[:id])
  end


  def edit #編集ページ
    @book = Book.find(params[:id])
  end

   def update
    @book = Book.find(params[:id])


    if @book.update(book_params)
    flash[:notice] = "Book was successfully created."
    redirect_to book_path(@book.id)

    else

          render :edit
    end

   end


def destroy
    book = Book.find(params[:id])

    book.destroy
    flash[:notice] = "Book was successfully created."
    redirect_to books_path
end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end

