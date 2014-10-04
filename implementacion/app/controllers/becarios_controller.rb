class BecariosController < ApplicationController
  before_action :set_becario, only: [:show, :edit, :update, :destroy]

  # GET /becarios
  # GET /becarios.json
  def index
    @becarios = Becario.all
  end

  # GET /becarios/1
  # GET /becarios/1.json
  def show
  end

  # GET /becarios/new
  def new
    @becario = Becario.new
  end

  # GET /becarios/1/edit
  def edit
  end

  # POST /becarios
  # POST /becarios.json
  def create
    @becario = Becario.new(becario_params)

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
    respond_to do |format|
      format.html { redirect_to becarios_url, notice: 'Becario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_becario
      @becario = Becario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def becario_params
      params.require(:becario).permit(:condonacion_beneficiarios, :cumple_requisitos, :datos_beneficiario, :info_beneficiario, :info_programa_doctoral, :info_tesis, :registro_pasantia)
    end
end
