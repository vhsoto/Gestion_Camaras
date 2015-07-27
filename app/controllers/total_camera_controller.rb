class TotalCameraController < ApplicationController
  def index
  	@human_connections = HumanConnection.all
  	@leaseds = Leased.all
  	@owns = Own.all
  	@schools = School.all
  	@transmilenios = Transmilenio.all
  	@unit_temporals = UnitTemporal.all    
  end

  def import 
    uploaded_io = params[:file]
    ruta = Rails.root.join('public', 'uploads', uploaded_io.original_filename)
    File.open(ruta, 'wb') do |file|
      file.write(uploaded_io.read)      
    end
    csv = CSV.foreach(ruta, headers: true, header_converters: :symbol) 
    csv.to_a.map { |row| row.to_h 
    respond_to do |format|     
      if row[:project] == "1"
        HumanConnection.import(params[:file])
      elsif row[:project] == "2"
        Leased.import(params[:file])
      elsif row[:project] == "3"
        Own.import(params[:file])
      elsif row[:project] == "4"
        School.import(params[:file])
      elsif row[:project] == "5"
        Transmilenio.import(params[:file])
      elsif row[:project] == "6"
        UnitTemporal.import(params[:file])               
      end
      format.html { redirect_to root_url, notice: "Archivo subido con éxito" }
      format.json { render :index, status: :ok} 
    end
    }      
  end     
end