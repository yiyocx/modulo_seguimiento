# Controlador para la calse VisitaTecnica
class VisitaTecnicasController < ApplicationController
  before_action :set_visita_tecnica, only: [:show, :edit, :update, :destroy]

  # GET /visita_tecnicas
  # GET /visita_tecnicas.json
  def index
    @visita_tecnicas = VisitaTecnica.all
  end

  # GET /visita_tecnicas/1
  # GET /visita_tecnicas/1.json
  def show
  end

  # GET /visita_tecnicas/new
  def new
    @visita_tecnica = VisitaTecnica.new
  end

  # GET /visita_tecnicas/1/edit
  def edit
  end

  # POST /visita_tecnicas
  # POST /visita_tecnicas.json
  def create
    @visita_tecnica = VisitaTecnica.new(visita_tecnica_params)

    respond_to do |format|
      if @visita_tecnica.save
        format.html { redirect_to @visita_tecnica, notice: 'Visita tecnica was successfully created.' }
        format.json { render :show, status: :created, location: @visita_tecnica }
      else
        format.html { render :new }
        format.json { render json: @visita_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visita_tecnicas/1
  # PATCH/PUT /visita_tecnicas/1.json
  def update
    respond_to do |format|
      if @visita_tecnica.update(visita_tecnica_params)
        format.html { redirect_to @visita_tecnica, notice: 'Visita tecnica was successfully updated.' }
        format.json { render :show, status: :ok, location: @visita_tecnica }
      else
        format.html { render :edit }
        format.json { render json: @visita_tecnica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visita_tecnicas/1
  # DELETE /visita_tecnicas/1.json
  def destroy
    @visita_tecnica.destroy
    respond_to do |format|
      format.html { redirect_to visita_tecnicas_url, notice: 'Visita tecnica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_visita_tecnica
    @visita_tecnica = VisitaTecnica.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def visita_tecnica_params
    params.require(:visita_tecnica).permit(:observacion,
                                           :porc_cumplimiento, :tipo_proyeccion)
  end
end
