class LunchesController < ApplicationController
  before_action :set_lunch, only: [:show, :update, :destroy]

  # GET /lunches
  def index
    @lunches = Lunch.all

    render json: @lunches
  end

  # GET /lunches/1
  def show
    render json: @lunch
  end

  # POST /lunches
  def create
    @lunch = Lunch.new(lunch_params)

    if @lunch.save
      render json: @lunch, status: :created, location: @lunch
    else
      render json: @lunch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lunches/1
  def update
    if @lunch.update(lunch_params)
      render json: @lunch
    else
      render json: @lunch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lunches/1
  def destroy
    @lunch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lunch_params
      params.require(:lunch).permit(:name)
    end
end
