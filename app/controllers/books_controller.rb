class BooksController < ApplicationController
  before_action :set_books, only: [:show, :edit, :update, :destroy]

  def index
    @books = policy_scope(Book)
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
    authorize @book
    if @book.save
      redirect_to book_path(@book), notice: 'Se ha creado la reserva exitosamente'
    else
      render  :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @book.update(booking_params)
      redirect_to booking_path(@book), notice: 'La reserva de actualizo con éxito'
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
      authorize @book
    end

    def books_params
      params.require(:book).permit(:start_date, :end_date, :guests, :total_price, :status)
    end
end
