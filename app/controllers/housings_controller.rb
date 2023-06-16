class HousingsController < ApplicationController
  before_action :set_housing, only: %i[ show edit update destroy]
  skip_before_action :authenticate_user!, only: :show

  # GET /housings or /housings.json
  def index
    @housings = policy_scope(Housing)
  end

  # GET /housings/1 or /housings/1.json
  def show
    @review = Review.new
    @book = Book.new
  end

  # GET /housings/new
  def new
    @housing = Housing.new
    authorize @housing
  end

  # GET /housings/1/edit
  def edit
  end

  # POST /housings or /housings.json
  def create
    @housing = Housing.new(housing_params)
    @user_id =  current_user.id
    @housing.user_id = @user_id
    authorize @housing
    respond_to do |format|
      if @housing.save
        format.html { redirect_to housing_url(@housing), notice: "Housing was successfully created." }
        format.json { render :show, status: :created, location: @housing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /housings/1 or /housings/1.json
  def update
    authorize @housing
    respond_to do |format|
      if @housing.update(housing_params)
        format.html { redirect_to housing_url(@housing), notice: "Housing was successfully updated." }
        format.json { render :show, status: :ok, location: @housing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /housings/1 or /housings/1.json
  def destroy
    @housing.destroy
    authorize @housing
    respond_to do |format|
      format.html { redirect_to housings_url, notice: "Housing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_housing
      @housing = Housing.find(params[:id])
      authorize @housing
      return @housing
    end

    # Only allow a list of trusted parameters through.
    def housing_params
      params.require(:housing).permit(:name, :user_id, :price, :amount_bathrooms, :amount_rooms, :msquare, :city, :state, :address, :images)
    end
end
