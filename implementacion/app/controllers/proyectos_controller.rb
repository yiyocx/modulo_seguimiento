# Controlador para la clase proyectos
class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :edit, :update, :destroy,
                                      :becarios_informe_final,
                                      :informes_por_convocatoria,
                                      :actualizar_informes]

  # GET /proyectos
  # GET /proyectos.json
  def index
    @proyectos = Proyecto.all
  end

  # GET /proyectos/1
  # GET /proyectos/1.json
  def show
  end

  # GET /proyectos/new
  def new
    @proyecto = Proyecto.new
  end

  # GET /proyectos/1/edit
  def edit
  end

  # POST /proyectos
  # POST /proyectos.json
  # rubocop:disable Style/LineLength
  def create
    @proyecto = Proyecto.new(proyecto_params)

    respond_to do |format|
      if @proyecto.save
        format.html { redirect_to @proyecto, notice: 'Proyecto fue creado correctamente.' }
        format.json { render :show, status: :created, location: @proyecto }
      else
        format.html { render :new }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyectos/1
  # PATCH/PUT /proyectos/1.json
  def update
    respond_to do |format|
      if @proyecto.update(proyecto_params)
        format.html { redirect_to @proyecto, notice: 'Proyecto fue actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @proyecto }
      else
        format.html { render :edit }
        format.json { render json: @proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyectos/1
  # DELETE /proyectos/1.json
  def destroy
    @proyecto.destroy
    respond_to do |format|
      format.html { redirect_to proyectos_url, notice: 'Proyecto fue eliminado correctamente.' }
      format.json { head :no_content }
    end
  end
  # rubocop:enable Style/LineLength

  def becarios_informe_final
    @becarios = Becario.find_by_sql(['SELECT b.* FROM becarios b
      WHERE b.contrato_id = ? and (SELECT COUNT(*) FROM informes inf
        WHERE inf.becario_id = b.id and inf.es_final = true) > 0',
                                     @proyecto.contrato_id])
  end

  def informes_por_convocatoria
    @informes_convocatoria = Informe.where(proyecto_id: @proyecto.id).order(:id)
  end

  def actualizar_informes
    resultado = ''
    params[:informes_convocatoria][:informes].each do |(key, value)|
      resultado += "Key: #{key}, Value: #{value}"

      informe = Informe.find key
      informe.update(value)
    end

    redirect_to informes_por_convocatoria_proyecto_path(@proyecto)
  end

  def listar_evaluadores
    @evaluadores = User.where(role: 4)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_proyecto
    @proyecto = Proyecto.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def proyecto_params
    params.require(:proyecto).permit(:duracion, :estado,
                                     :linea_tematica, :lugar_ejecucion,
                                     :titulo, :contrato_id)
  end
end
