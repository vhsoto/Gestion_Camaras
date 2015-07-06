class TotalCameraController < ApplicationController
  def index
  	@human_connections = HumanConnection.all
  	@leaseds = Leased.all
  	@owns = Own.all
  	@schools = School.all
  	@transmilenios = Transmilenio.all
  	@unit_temporals = UnitTemporal.all
  end

  # def import
  #   begin
  #     UnitTemporal.import(params[:file])
  #     redirect_to unit_temporals_url, notice: "Archivo plano subido con éxito"
  #   rescue
  #     redirect_to unit_temporals_url, notice: "Formato CSV no valido."
  #   end
  # end
end