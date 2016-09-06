class GlosaPatentesController < ApplicationController
  before_action :set_glosa_patente, only: [:show, :update, :destroy]

  # GET /glosa_patentes
  def index
    @glosa_patentes = GlosaPatente.all

    render json: @glosa_patentes
  end

  # GET /glosa_patentes/1
  def show
    render json: @glosa_patente
  end

  # POST /glosa_patentes
  def create
    @glosa_patente = GlosaPatente.new(glosa_patente_params)

    if @glosa_patente.save
      render json: @glosa_patente, status: :created, location: @glosa_patente
    else
      render json: @glosa_patente.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /glosa_patentes/1
  def update
    if @glosa_patente.update(glosa_patente_params)
      render json: @glosa_patente
    else
      render json: @glosa_patente.errors, status: :unprocessable_entity
    end
  end

  # DELETE /glosa_patentes/1
  def destroy
    @glosa_patente.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glosa_patente
      @glosa_patente = GlosaPatente.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def glosa_patente_params
      params.require(:glosa_patente).permit(:nombre)
    end
end
