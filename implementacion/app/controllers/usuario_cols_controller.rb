class UsuarioColsController < ApplicationController
  before_action :set_usuario_col, only: [:show, :edit, :update, :destroy]

  # GET /usuario_cols
  # GET /usuario_cols.json
  def index
    @usuario_cols = UsuarioCol.all
  end

  # GET /usuario_cols/1
  # GET /usuario_cols/1.json
  def show
  end

  # GET /usuario_cols/new
  def new
    @usuario_col = UsuarioCol.new
  end

  # GET /usuario_cols/1/edit
  def edit
  end

  # POST /usuario_cols
  # POST /usuario_cols.json
  def create
    @usuario_col = UsuarioCol.new(usuario_col_params)

    respond_to do |format|
      if @usuario_col.save
        format.html { redirect_to @usuario_col, notice: 'Usuario col was successfully created.' }
        format.json { render :show, status: :created, location: @usuario_col }
      else
        format.html { render :new }
        format.json { render json: @usuario_col.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_cols/1
  # PATCH/PUT /usuario_cols/1.json
  def update
    respond_to do |format|
      if @usuario_col.update(usuario_col_params)
        format.html { redirect_to @usuario_col, notice: 'Usuario col was successfully updated.' }
        format.json { render :show, status: :ok, location: @usuario_col }
      else
        format.html { render :edit }
        format.json { render json: @usuario_col.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_cols/1
  # DELETE /usuario_cols/1.json
  def destroy
    @usuario_col.destroy
    respond_to do |format|
      format.html { redirect_to usuario_cols_url, notice: 'Usuario col was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_col
      @usuario_col = UsuarioCol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_col_params
      params[:usuario_col]
    end
end
