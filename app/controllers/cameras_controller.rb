class CamerasController < ApplicationController
  before_action :set_camera, only: [:show, :edit, :update, :destroy]

  # GET /cameras
  # GET /cameras.json
  def index
    if params[:search].blank?
      @cameras = Camera.order(:location).all.page(params[:page]).per(params[:per])
      respond_to do |format|
        format.js { } 
        format.html
      end
      authorize @cameras
    else
      @cameras = Camera.search(params[:search]).page(params[:page]).per(params[:per])
      respond_to do |format|
        format.js 
        format.html
      end
      authorize @cameras
    end
  end

  # GET /cameras/1
  # GET /cameras/1.json
  def show
    authorize @camera
  end

  # GET /cameras/new
  def new    
    @camera = Camera.new
    authorize @camera
  end

  # GET /cameras/1/edit
  def edit
    authorize @camera
  end

  # POST /cameras
  # POST /cameras.json
  def create
    @camera = Camera.new(camera_params)
    authorize @camera
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
        authorize @camera
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
    authorize @camera
  end

  def import    
    respond_to do |format|  
      begin
        @cameras = Camera.import(params[:file])
        format.html { redirect_to cameras_url, notice: "Archivo subido con éxito" }
        format.json { render :index, status: :ok }
        authorize @cameras
      rescue
        format.html { redirect_to cameras_url, alert: "Archivo no subido, vuelve a intentarlo" }
        format.json { render json: @camera.errors, status: :unprocessable_entity }
      end
    end
  end


  def conexion_humana    
    if params[:search].blank?
      @conexiones = Camera.where(project: 1).order(:location).all
      authorize @conexiones #page params[:page]      
    else
      @conexiones = Camera.where(project: 1).search
      authorize @conexiones
    end
  end

  def propia
    if params[:search].blank?
      @propias = Camera.where(project: 2).order(:location).all #page params[:page]
      authorize @propias
    else
      @propias = Camera.where(project: 2).search
      authorize @propias
    end
  end

  def arrendada
    if params[:search].blank?
      @arrendadas = Camera.where(project: 3).order(:location).all #page params[:page]
      authorize @arrendadas
    else
      @arrendadas = Camera.where(project: 3).search
      authorize @arrendadas
    end
  end

  def colegio
    if params[:search].blank?
      @colegios = Camera.where(project: 4).order(:location).all #page params[:page]
      authorize @colegios
    else
      @colegios = Camera.where(project: 4).search
      authorize @colegios
    end
  end

  def transmilenio
    if params[:search].blank?
      @transmilenios = Camera.where(project: 5).order(:location).all #page params[:page]
      authorize @transmilenios
    else
      @transmilenios = Camera.where(project: 5).search
      authorize @transmilenios
    end
  end

  def ute
    if params[:search].blank?
      @utes = Camera.where(project: 6).order(:location).all #page params[:page]
      authorize @utes
    else
      @utes = Camera.where(project: 6).search
      authorize @utes
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera
      @camera = Camera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camera_params
      params.require(:camera).permit(:spot, :orientation, :address, :polygon, :condition, :cosec, :location, :lat, :lng, :project, :qty)
    end
end
