class UnitTemporalsController < ApplicationController
  before_action :set_unit_temporal, only: [:show, :edit, :update, :destroy]

  # GET /unit_temporals
  # GET /unit_temporals.json
  def index
    @unit_temporals = UnitTemporal.all
  end

  # GET /unit_temporals/1
  # GET /unit_temporals/1.json
  def show
  end

  # GET /unit_temporals/new
  def new
    @unit_temporal = UnitTemporal.new
  end

  # GET /unit_temporals/1/edit
  def edit
  end

  # POST /unit_temporals
  # POST /unit_temporals.json
  def create
    @unit_temporal = UnitTemporal.new(unit_temporal_params)

    respond_to do |format|
      if @unit_temporal.save
        format.html { redirect_to unit_temporals_path, notice: 'Unit temporal was successfully created.' }
        format.json { render :show, status: :created, location: @unit_temporal }
      else
        format.html { render :new }
        format.json { render json: @unit_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unit_temporals/1
  # PATCH/PUT /unit_temporals/1.json
  def update
    respond_to do |format|
      if @unit_temporal.update(unit_temporal_params)
        format.html { redirect_to unit_temporals_path, notice: 'Unit temporal was successfully updated.' }
        format.json { render :show, status: :ok, location: @unit_temporal }
      else
        format.html { render :edit }
        format.json { render json: @unit_temporal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_temporals/1
  # DELETE /unit_temporals/1.json
  def destroy
    @unit_temporal.destroy
    respond_to do |format|
      format.html { redirect_to unit_temporals_url, notice: 'Unit temporal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    begin
      UnitTemporal.import(params[:file])
      redirect_to unit_temporals_url, notice: "Archivo plano subido con éxito"
    rescue
      redirect_to unit_temporals_url, notice: "Formato CSV no valido."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unit_temporal
      @unit_temporal = UnitTemporal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unit_temporal_params
      params.require(:unit_temporal).permit(:spot, :orientation, :address, :polygon, :condition, :location, :cosec)
    end
end
