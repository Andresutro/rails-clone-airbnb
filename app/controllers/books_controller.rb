class BooksController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @books = book.all
  end

  def show
  end

  def new
    @book = book.new
  end

  def create
    @book = book.new(booking_params)
    if @book.save
      redirect_to booking_path(@book), notice: 'book was successfully created.'
    else
      render :new #agregar unprocesable entitity
    end
  end

  def edit
  end

  def update
    if @book.update(booking_params)
      redirect_to booking_path(@book), notice: 'book was successfully updated.'
    else
      render :edit
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
