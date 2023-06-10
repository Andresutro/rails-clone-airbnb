class BooksController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def create
    @book = Book.new(booking_params)
    @book.user = current_user
    @book.housing_id = params[:housing_id]
    if @book.save
      redirect_to books_path(@book), notice: 'book was successfully created.'
    else
      render render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @book.update(booking_params)
      redirect_to booking_path(@book), notice: 'book was successfully updated.'
    else
      render :edit , status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to bookings_path, notice: 'book was successfully destroyed.'
  end

    private

    def set_booking
      @book = book.find(params[:id])
    end

    def booking_params
      params.require(:book).permit(:user_id, :housing_id, :start_date, :end_date, :guests)
    end
end
