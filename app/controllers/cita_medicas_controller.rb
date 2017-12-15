class CitaMedicasController < ApplicationController
  before_action :set_cita_medica, only: [:show, :edit, :update, :destroy]

  # GET /cita_medicas
  # GET /cita_medicas.json
  def index
    @cita_medicas = CitaMedica.all
  end

  # GET /cita_medicas/1
  # GET /cita_medicas/1.json
  def show
  end

  # GET /cita_medicas/new
  def new
    @cita_medica = CitaMedica.new
  end

  # GET /cita_medicas/1/edit
  def edit
  end

  # POST /cita_medicas
  # POST /cita_medicas.json
  def create
    @cita_medica = CitaMedica.new(cita_medica_params)

    respond_to do |format|
      if @cita_medica.save
        format.html { redirect_to @cita_medica, notice: 'Cita medica was successfully created.' }
        format.json { render :show, status: :created, location: @cita_medica }
      else
        format.html { render :new }
        format.json { render json: @cita_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cita_medicas/1
  # PATCH/PUT /cita_medicas/1.json
  def update
    respond_to do |format|
      if @cita_medica.update(cita_medica_params)
        format.html { redirect_to @cita_medica, notice: 'Cita medica was successfully updated.' }
        format.json { render :show, status: :ok, location: @cita_medica }
      else
        format.html { render :edit }
        format.json { render json: @cita_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cita_medicas/1
  # DELETE /cita_medicas/1.json
  def destroy
    @cita_medica.destroy
    respond_to do |format|
      format.html { redirect_to cita_medicas_url, notice: 'Cita medica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cita_medica
      @cita_medica = CitaMedica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cita_medica_params
      params.require(:cita_medica).permit(:fecha, :doctor_id, :persona_id)
    end
end
