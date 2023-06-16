class BooksController < ApplicationController
  before_action :set_books, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(books_params)
    @book.user = current_user
    @book.housing_id = params[:housing_id]
    if @book.save
      redirect_to books_path(@books), notice: 'Se ha creado la reserva exitosamente'
    else
      render  :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @book.update(books_params)
      redirect_to books_path(@book), notice: 'La reserva de actualizo con éxito'
    else
      render :edit , status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path, notice: 'La reserva fue eliminada con éxito.'
  end

    private

    def set_books
      @book = Book.find(params[:id])
    end

    def books_params
      params.require(:books).permit(:user_id, :housing_id, :start_date, :end_date, :guests)
    end
end
