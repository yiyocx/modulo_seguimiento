# Controlador de la case Evaluador
class EvaluadorsController < ApplicationController
  before_action :set_evaluador, only: [:show, :edit, :listar_informes_evaluador, :listar_propuestas_asignadas]

  # GET /evaluadors
  # GET /evaluadors.json
  def index
    @evaluadors = Evaluador.all
  end

  # GET /evaluadors/1
  # GET /evaluadors/1.json
  def show
  end

  # GET /evaluadors/new
  def new
    @evaluador = Evaluador.new
  end

  # GET /evaluadors/1/edit
  def edit
  end

  def listar_informes_evaluador
    @informes_evaluador = Informe.where(evaluador_id: @evaluador.id)
  end

  def listar_propuestas_asignadas
    @evaluaciones_evaluador = Evaluacion.where(evaluador_id: @evaluador.id).ids
    @propuestas_asignadas = Propuesta.where(estado: "seguimiento").where("evaluacion_id IN (?)", @evaluaciones_evaluador)
    
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_evaluador
    @evaluador = Evaluador.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  # def evaluador_params
  #   params.require(:evaluador).permit(:descripcion,
  #                                   :es_final, :fecha, :tipo, :document)
  # end
end
