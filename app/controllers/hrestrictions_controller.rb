class HrestrictionsController < ApplicationController
  before_action :set_hrestriction, only: [:show, :update, :destroy]

  # GET /hrestrictions
  def index
    @hrestrictions = Hrestriction.all

    render json: @hrestrictions
  end

  # GET /hrestrictions/1
  def show
    render json: @hrestriction
  end

  # POST /hrestrictions
  def create
    @hrestriction = Hrestriction.new(hrestriction_params)

    if @hrestriction.save
      render json: @hrestriction, status: :created, location: @hrestriction
    else
      render json: @hrestriction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hrestrictions/1
  def update
    if @hrestriction.update(hrestriction_params)
      render json: @hrestriction
    else
      render json: @hrestriction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hrestrictions/1
  def destroy
    @hrestriction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hrestriction
      @hrestriction = Hrestriction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hrestriction_params
      params.require(:hrestriction).permit(:name, :active)
    end
end
