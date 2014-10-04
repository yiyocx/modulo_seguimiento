class DesembolsosController < ApplicationController
  before_action :set_desembolso, only: [:show, :edit, :update, :destroy]

  # GET /desembolsos
  # GET /desembolsos.json
  def index
    @desembolsos = Desembolso.all
  end

  # GET /desembolsos/1
  # GET /desembolsos/1.json
  def show
  end

  # GET /desembolsos/new
  def new
    @desembolso = Desembolso.new
  end

  # GET /desembolsos/1/edit
  def edit
  end

  # POST /desembolsos
  # POST /desembolsos.json
  def create
    @desembolso = Desembolso.new(desembolso_params)

    respond_to do |format|
      if @desembolso.save
        format.html { redirect_to @desembolso, notice: 'Desembolso was successfully created.' }
        format.json { render :show, status: :created, location: @desembolso }
      else
        format.html { render :new }
        format.json { render json: @desembolso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desembolsos/1
  # PATCH/PUT /desembolsos/1.json
  def update
    respond_to do |format|
      if @desembolso.update(desembolso_params)
        format.html { redirect_to @desembolso, notice: 'Desembolso was successfully updated.' }
        format.json { render :show, status: :ok, location: @desembolso }
      else
        format.html { render :edit }
        format.json { render json: @desembolso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desembolsos/1
  # DELETE /desembolsos/1.json
  def destroy
    @desembolso.destroy
    respond_to do |format|
      format.html { redirect_to desembolsos_url, notice: 'Desembolso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desembolso
      @desembolso = Desembolso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desembolso_params
      params.require(:desembolso).permit(:estado, :fecha_solicitud, :valor, :girado, :fecha_giro, :condiciones, :proyecto_id)
    end
end
