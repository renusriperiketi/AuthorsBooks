class BooksController < ApplicationController
    http_basic_authenticate_with name: "Renu", password: "secret", only: :destroy
    def create
        binding.pry
        @author = Author.find(params[:author_id])
        @book = @author.books.create(book_params)
        redirect_to author_path(@author)
    end

    def destroy
        @author = Author.find(params[:author_id])
        @book = @author.books.find(params[:id])
        @book.destroy
        redirect_to author_path(@author), status: 303
      end
    
    private
        def book_params
          params.require(:book).permit(:Bookname, :Publicationyear, :Genre, :Blurb, :status)
        end
end
