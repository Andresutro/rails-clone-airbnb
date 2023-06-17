class ConfirmationsController < ApplicationController

  def index
    @housings = current_user.housings
  end

  def show
    @housing = Housing.find(params[:id])
  end

  def accept
    @book = Book.find(params[:id])
    @book.update(status: "accept")
    redirect_to confirmations_path
  end

  def reject
    @book = Book.find(params[:id])
    @book.update(status: "reject")
    redirect_to confirmations_path
  end
end
