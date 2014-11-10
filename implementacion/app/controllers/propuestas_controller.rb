# Controlador de la clase Propuestas
class PropuestasController < ApplicationController
  before_action :set_propuesta, only: [:show, :edit, :update, :destroy, :evaluar_propuesta]

  # GET /propuestas
  # GET /propuestas.json
  def index
    @propuestas = Propuesta.all
  end

  # GET /propuestas/1
  # GET /propuestas/1.json
  def show
  end

  # GET /propuestas/new
  def new
    @propuesta = Propuesta.new
  end

  # GET /propuestas/1/edit
  def edit
  end

  # POST /propuestas
  # POST /propuestas.json
  # rubocop:disable Style/LineLength
  def create
    @propuesta = Propuesta.new(propuesta_params)

    respond_to do |format|
      if @propuesta.save
        format.html { redirect_to @propuesta, notice: 'Propuesta was successfully created.' }
        format.json { render :show, status: :created, location: @propuesta }
      else
        format.html { render :new }
        format.json { render json: @propuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propuestas/1
  # PATCH/PUT /propuestas/1.json
  def update
    respond_to do |format|
      if @propuesta.update(propuesta_params)
        format.html { redirect_to @propuesta, notice: 'Propuesta was successfully updated.' }
        format.json { render :show, status: :ok, location: @propuesta }
      else
        format.html { render :edit }
        format.json { render json: @propuesta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propuestas/1
  # DELETE /propuestas/1.json
  def destroy
    @propuesta.destroy
    respond_to do |format|
      format.html { redirect_to propuestas_url, notice: 'Propuesta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # rubocop:enable Style/LineLength

  def evaluar_propuesta
    @el_informe = @propuesta.evaluacion.informe
  end

  def procesar_evaluacion_propuesta
    @propuesta = Propuesta.find(params[:id])
    @informe = @propuesta.evaluacion.informe
    @informe.update_attributes(document: params[:informes][:document])
    @propuesta.estado = 'otro'
    @propuesta.save
    redirect_to listar_propuestas_asignadas_evaluador_path(@propuesta.evaluacion.evaluador)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_propuesta
    @propuesta = Propuesta.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def propuesta_params
    params.require(:propuesta).permit(:numero, :nombre, :estado, :proyecto_id)
  end
end
