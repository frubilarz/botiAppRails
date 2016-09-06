class MediosPagoLocalsController < ApplicationController
  before_action :set_medios_pago_local, only: [:show, :update, :destroy]

  # GET /medios_pago_locals
  def index
    @medios_pago_locals = MediosPagoLocal.all

    render json: @medios_pago_locals
  end

  # GET /medios_pago_locals/1
  def show
    render json: @medios_pago_local
  end

  # POST /medios_pago_locals
  def create
    @medios_pago_local = MediosPagoLocal.new(medios_pago_local_params)

    if @medios_pago_local.save
      render json: @medios_pago_local, status: :created, location: @medios_pago_local
    else
      render json: @medios_pago_local.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medios_pago_locals/1
  def update
    if @medios_pago_local.update(medios_pago_local_params)
      render json: @medios_pago_local
    else
      render json: @medios_pago_local.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medios_pago_locals/1
  def destroy
    @medios_pago_local.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medios_pago_local
      @medios_pago_local = MediosPagoLocal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medios_pago_local_params
      params.require(:medios_pago_local).permit(:local_id, :medios_pago_id)
    end
end
