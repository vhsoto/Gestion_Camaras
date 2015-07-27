class LeasedsController < ApplicationController
  before_action :set_leased, only: [:show, :edit, :update, :destroy]

  # GET /leaseds
  # GET /leaseds.json
  def index
    @leaseds = Leased.all
  end

  # GET /leaseds/1
  # GET /leaseds/1.json
  def show
  end

  # GET /leaseds/new
  def new
    @leased = Leased.new
  end

  # GET /leaseds/1/edit
  def edit
  end

  # POST /leaseds
  # POST /leaseds.json
  def create
    @leased = Leased.new(leased_params)

    respond_to do |format|
      if @leased.save
        format.html { redirect_to @leased, notice: 'Cámara agregada con éxito!' }
        format.json { render :show, status: :created, location: @leased }
      else
        format.html { render :new }
        format.json { render json: @leased.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaseds/1
  # PATCH/PUT /leaseds/1.json
  def update
    respond_to do |format|
      if @leased.update(leased_params)
        format.html { redirect_to @leased, notice: 'Cámara actualizada con éxito!' }
        format.json { render :show, status: :ok, location: @leased }
      else
        format.html { render :edit }
        format.json { render json: @leased.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaseds/1
  # DELETE /leaseds/1.json
  def destroy
    @leased.destroy
    respond_to do |format|
      format.html { redirect_to leaseds_url, notice: 'Cámara eliminada con éxito!' }
      format.json { head :no_content }
    end
  end

  def import
    begin
      Leased.import(params[:file])
      redirect_to leaseds_url, notice: "Archivo plano subido con éxito"
    rescue
      redirect_to leaseds_url, alert: "Archivo no subido con éxito. Revise la extensión del archivo."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leased
      @leased = Leased.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leased_params
      params.require(:leased).permit(:spot, :orientation, :address, :polygon, :condition, :location, :cosec)
    end
end
