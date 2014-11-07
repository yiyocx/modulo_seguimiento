# Controlador de la clase User
# rubocop:disable Style/ClassLength
class UsersController < ApplicationController
  # rubocop:enable Style/ClassLength
  before_action :set_user, only: [:show, :edit, :update, :destroy,
                                  :show_becario, :listar_informes_evaluador]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def show_becario
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  # rubocop:disable Style/LineLength
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  # rubocop:enable Style/LineLength

  def nuevo_becario
    @user = User.new
  end

  def nuevo_colciencias
    @user = User.new
  end

  def nuevo_evaluador
    @user = User.new
  end

  # rubocop:disable Style/LineLength
  def crear_usuario_becario
    @user = User.new(user_params)
    @user.role = 2
    @user.nombre = @user.becario.nombre
    @generated_password = Devise.friendly_token.first(8)
    @user.encrypted_password =  @generated_password
    @user.email = @user.becario.email
    @user.send_reset_password_instructions

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def crear_usuario_colciencias
    @user = User.new(user_params)
    @user.role = 3
    @generated_password = Devise.friendly_token.first(8)
    @user.encrypted_password =  @generated_password
    @user.send_reset_password_instructions

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def crear_usuario_evaluador
    @user = User.new(user_params)
    @user.role = 4
    @generated_password = Devise.friendly_token.first(8)
    @user.encrypted_password =  @generated_password
    @user.send_reset_password_instructions

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  # rubocop:enable Style/LineLength

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet,
  # only allow the white list through.
  def user_params
    params.require(:user).permit(:nombre, :becario_id, :email,
                                 becario_attributes:
                                 [:condonacion_beneficiarios,
                                  :cumple_requisitos,
                                  :numero_DI, :nombre,
                                  :apellido1, :apellido2, :fecha_nacimiento,
                                  :departamento_nacimiento,
                                  :genero, :email, :telefono,
                                  :direccion_residencial, :ciudad,
                                  :direccion_profesional])
  end
end
