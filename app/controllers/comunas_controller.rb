class ComunasController < ApplicationController
  before_action :set_comuna, only: [:show, :update, :destroy]

  # GET /comunas
  def index
    @comunas = Comuna.all

    render json: @comunas
  end

  # GET /comunas/1
  def show
    render json: @comuna
  end

  # POST /comunas
  def create
    @comuna = Comuna.new(comuna_params)

    if @comuna.save
      render json: @comuna, status: :created, location: @comuna
    else
      render json: @comuna.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comunas/1
  def update
    if @comuna.update(comuna_params)
      render json: @comuna
    else
      render json: @comuna.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comunas/1
  def destroy
    @comuna.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comuna
      @comuna = Comuna.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comuna_params
      params.require(:comuna).permit(:nombre, :provincia_id)
    end
end
