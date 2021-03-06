# Controlador de la clase becario
class BecariosController < ApplicationController
  before_action :set_becario, only: [:show, :edit, :update, :destroy,
                                     :informes_anuales_condonacion,
                                     :informe_final, :descargar_informe_final,
                                     :asignar_evaluador_informe_final]

  # after_action :verify_authorized

  # GET /becarios
  # GET /becarios.json
  def index
    @becarios = Becario.all
    # authorize @becarios
  end

  # GET /becarios/1
  # GET /becarios/1.json
  def show
  end

  # GET /becarios/new
  def new
    @becario = Becario.new
    # authorize @becario
  end

  # GET /becarios/1/edit
  def edit
    # authorize @becario
  end

  # POST /becarios
  # POST /becarios.json
  # rubocop:disable Style/LineLength
  def create
    @becario = Becario.new(becario_params)
    # authorize @becario

    respond_to do |format|
      if @becario.save
        format.html { redirect_to @becario, notice: 'Becario was successfully created.' }
        format.json { render :show, status: :created, location: @becario }
      else
        format.html { render :new }
        format.json { render json: @becario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /becarios/1
  # PATCH/PUT /becarios/1.json
  def update
    # authorize @becario
    respond_to do |format|
      if @becario.update(becario_params)
        format.html { redirect_to @becario, notice: 'Becario was successfully updated.' }
        format.json { render :show, status: :ok, location: @becario }
      else
        format.html { render :edit }
        format.json { render json: @becario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /becarios/1
  # DELETE /becarios/1.json
  def destroy
    @becario.destroy
    # authorize @becario
    respond_to do |format|
      format.html { redirect_to becarios_url, notice: 'Becario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # rubocop:enable Style/LineLength

  def informes_anuales_condonacion
    @convocatorias = Proyecto.where(contrato_id: @becario.contrato_id)
  end

  def informe_final
    @informe = Informe.find_by(becario_id: @becario.id, es_final: true)
    redirect_to informe_path(@informe)
  end

  def descargar_informe_final
    @informe = Informe.find_by(becario_id: @becario.id, es_final: true)
    redirect_to @informe.document.url(:original, false), target: '_blank'
  end

  def asignar_evaluador_informe_final
    @informe = Informe.find_by(becario_id: @becario.id, es_final: true)
    redirect_to informe_path(@informe)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_becario
    @becario = Becario.find(params[:id])
    # authorize @becario
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def becario_params
    params.require(:becario).permit(:condonacion_beneficiarios,
                                    :cumple_requisitos, :numero_DI,
                                    :nombre, :apellido1, :apellido2,
                                    :fecha_nacimiento, :departamento_nacimiento,
                                    :genero, :email, :telefono,
                                    :direccion_residencial, :ciudad,
                                    :direccion_profesional, :info_beneficiario,
                                    :info_programa_doctoral, :info_tesis,
                                    :registro_pasantia)
  end
end
