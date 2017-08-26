class BooksController < ApplicationController
  authorize_resource class: :books

  def index
<<<<<<< HEAD

    if params[:search].present?
       @books = Book.where("title like '%#{params[:search]}%' ").paginate(page: params[:page], per_page: 2)
    else
       @books = Book.paginate(page: params[:page], per_page: 2)
    end
=======
    if params[:search].present?
      @books = Book.where("title like '%#{params[:search]}%'").paginate(page: params[:page], per_page: 2)
    else
      @books = Book.paginate(page: params[:page], per_page: 2)
    end
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to books_path
    else
      render :new
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

    @book.assign_attributes(book_params)
    if @book.save
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path
    end
  end

  private

  def book_params
    params.require(:book).permit(
    :title, :publication_year, :author_id,
    :resume, :total_pages, :cover)
>>>>>>> 591b2ac9269ab7abd01edc3f85ebb94f87ae6fd7
  end

  def new
     @book = Book.new
  end

  def create
     @book = Book.new(book_params)
     if @book.save
       redirect_to books_path
     else
       render :new
    end
  end


  def edit
     @book = Book.find(params[:id])
  end

  def show
     @book = Book.find(params[:id])
  end


  def update
     @book = Book.find(params[:id])
     @book.assign_attributes(book_params)

     if @book.save
       redirect_to books_path
     else
       render :edit
    end

  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy
      redirect_to books_path
    end
  end



  private

  def book_params
     params.require(:book).permit(:title, :publication_year, :author_id)

  end


end
