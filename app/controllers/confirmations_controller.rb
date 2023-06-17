class ConfirmationsController < ApplicationController
  def index
    @books = policy_scope(Book)
  end

  def show
    
  end
end
