class BrestrictionsController < ApplicationController
  before_action :set_brestriction, only: [:show, :update, :destroy]

  # GET /brestrictions
  def index
    @brestrictions = Brestriction.all

    render json: @brestrictions
  end

  # GET /brestrictions/1
  def show
    render json: @brestriction
  end

  # POST /brestrictions
  def create
    @brestriction = Brestriction.new(brestriction_params)

    if @brestriction.save
      render json: @brestriction, status: :created, location: @brestriction
    else
      render json: @brestriction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /brestrictions/1
  def update
    if @brestriction.update(brestriction_params)
      render json: @brestriction
    else
      render json: @brestriction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brestrictions/1
  def destroy
    @brestriction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brestriction
      @brestriction = Brestriction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brestriction_params
      params.require(:brestriction).permit(:name, :active)
    end
end
