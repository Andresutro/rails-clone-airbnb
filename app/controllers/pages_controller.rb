class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @housings = Housing.all
  end

  def example
  end
end
