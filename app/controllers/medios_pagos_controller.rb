class MediosPagosController < ApplicationController
  before_action :set_medios_pago, only: [:show, :update, :destroy]

  # GET /medios_pagos
  def index
    @medios_pagos = MediosPago.all

    render json: @medios_pagos
  end

  # GET /medios_pagos/1
  def show
    render json: @medios_pago
  end

  # POST /medios_pagos
  def create
    @medios_pago = MediosPago.new(medios_pago_params)

    if @medios_pago.save
      render json: @medios_pago, status: :created, location: @medios_pago
    else
      render json: @medios_pago.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /medios_pagos/1
  def update
    if @medios_pago.update(medios_pago_params)
      render json: @medios_pago
    else
      render json: @medios_pago.errors, status: :unprocessable_entity
    end
  end

  # DELETE /medios_pagos/1
  def destroy
    @medios_pago.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medios_pago
      @medios_pago = MediosPago.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def medios_pago_params
      params.require(:medios_pago).permit(:nombre)
    end
end
