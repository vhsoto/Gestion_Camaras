class CamerasController < ApplicationController
  before_action :set_camera, only: [:show, :edit, :update, :destroy]

  # GET /cameras
  # GET /cameras.json
  def index
    if params[:search].blank?
      @cameras = Camera.all
    else
      @cameras = Camera.search(params[:search])
    end
  end

  # GET /cameras/1
  # GET /cameras/1.json
  def show
  end

  # GET /cameras/new
  def new
    @camera = Camera.new
  end

  # GET /cameras/1/edit
  def edit
  end

  # POST /cameras
  # POST /cameras.json
  def create
    @camera = Camera.new(camera_params)

    respond_to do |format|
      if @camera.save
        format.html { redirect_to @camera, notice: 'Cámara creada con éxito.' }
        format.json { render :show, status: :created, location: @camera }
      else
        format.html { render :new }
        format.json { render json: @camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cameras/1
  # PATCH/PUT /cameras/1.json
  def update
    respond_to do |format|
      if @camera.update(camera_params)
        format.html { redirect_to @camera, notice: 'Cámara actualizada con éxito.' }
        format.json { render :show, status: :ok, location: @camera }
      else
        format.html { render :edit }
        format.json { render json: @camera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cameras/1
  # DELETE /cameras/1.json
  def destroy
    @camera.destroy
    respond_to do |format|
      format.html { redirect_to cameras_url, notice: 'Cámara eliminada con éxito.' }
      format.json { head :no_content }
    end
  end

  def import
    respond_to do |format|  
      begin
        @cameras = Camera.import(params[:file])
        format.html { redirect_to cameras_url, notice: "Archivo subido con éxito" }
        format.json { render :index, status: :ok }
      rescue
        format.html { redirect_to cameras_url, alert: "Archivo no subido, vuelve a intentarlo" }
        format.json { render json: @camera.errors, status: :unprocessable_entity }
      end
    end
  end

  def conexion_humana
    @conexiones = Camera.where(project: 1).all
  end

  def propia
    @propias = Camera.where(project: 2).all
  end

  def arrendada
    @arrendadas = Camera.where(project: 3).all
  end

  def colegio
    @colegios = Camera.where(project: 4).all
  end

  def transmilenio
    @transmilenios = Camera.where(project: 5).all
  end

  def ute
    @utes = Camera.where(project: 6).all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera
      @camera = Camera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camera_params
      params.require(:camera).permit(:spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng, :project)
    end
end