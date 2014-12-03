# Controlador de la clase Propuestas
class PropuestasController < ApplicationController
  before_action :set_propuesta,
                only: [:show, :edit, :update,
                       :destroy, :evaluar_propuesta]

  before_filter :is_evaluador, only: [:evaluar_propuesta]                    

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
        format.html { redirect_to @propuesta, notice: 'Propuesta fue creada correctamente.' }
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
        format.html { redirect_to @propuesta, notice: 'Propuesta fue actualizada correctamente.' }
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
      format.html { redirect_to propuestas_url, notice: 'Propuesta fue eliminada correctamente.' }
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
    if !params[:informes].nil? and
       params[:informes][:document].content_type.eql?("application/pdf")
      @informe.update_attributes(document: params[:informes][:document])
      @propuesta.estado = 'otro'
      @propuesta.save
      redirect_to listar_propuestas_asignadas_evaluador_path(
        @propuesta.evaluacion.evaluador)
    else
      redirect_to evaluar_propuesta_propuesta_path(@propuesta), alert: 'Por favor ingrese un archivo PDF'
    end
  end

  private

  def is_evaluador
    if current_user.role.eql? 'becario'
      redirect_to becario_path(current_user.becario.id), notice: 'No tiene permiso para acceder a esta vista' unless current_user.role.eql? 'evaluador'
    elsif current_user.role.eql? 'colciencias'
      redirect_to usuario_col_path(current_user.usuario_col.id), notice: 'No tiene permiso para acceder a esta vista' unless current_user.role.eql? 'evaluador'
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_propuesta
    @propuesta = Propuesta.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def propuesta_params
    params.require(:propuesta).permit(:numero, :nombre, :estado, :proyecto_id, params[:informes][:document])
  end
end
