class PagesController < ApplicationController

  def home
    @housings = Housing.all
  end

  def example
    
  end
end
