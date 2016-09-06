class TipoPatentesController < ApplicationController
  before_action :set_tipo_patente, only: [:show, :update, :destroy]

  # GET /tipo_patentes
  def index
    @tipo_patentes = TipoPatente.all

    render json: @tipo_patentes
  end

  # GET /tipo_patentes/1
  def show
    render json: @tipo_patente
  end

  # POST /tipo_patentes
  def create
    @tipo_patente = TipoPatente.new(tipo_patente_params)

    if @tipo_patente.save
      render json: @tipo_patente, status: :created, location: @tipo_patente
    else
      render json: @tipo_patente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_patentes/1
  def update
    if @tipo_patente.update(tipo_patente_params)
      render json: @tipo_patente
    else
      render json: @tipo_patente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_patentes/1
  def destroy
    @tipo_patente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_patente
      @tipo_patente = TipoPatente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_patente_params
      params.require(:tipo_patente).permit(:nombre)
    end
end
