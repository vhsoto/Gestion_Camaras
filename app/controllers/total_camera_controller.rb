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
                
      CSV.foreach(file.path, headers: true, header_converters: :symbol, converters: :all) do |row|
        row.to_a.map {|row| row.to_h 
        if row[:project] == '1'
          HumanConnection.import(params[:file])
          redirect_to root_url, notice: "Archivo plano subido con éxito"
        else
          redirect_to root_url, notice: "mierdaaaaaaa"
        end
      } 
   end
  end
end


# # (spot: human_connection_hash['spot'])
# CSV.foreach(csv_file_path) do |row|
#       # creamos un post por cada fila
#       p = Post.create({
#         :title => row[0],
#         :content => row[1]
#       })
#     end

#     { a: 1 }.with_indifferent_access['a']

# CSV.foreach(file.path, headers: true) do |row|
#             human_connection_hash = row.to_hash 
            
#             HumanConnection.create!(human_connection_hash) unless HumanConnection.exists?(spot: human_connection_hash['spot'])
#         end


# abrir = CSV.open(params[:csv]).path
#       csv = abrir(headers: true, header_converters: :symbol, converters: :all)
#       csv.to_a.map {|row| row.to_h 
#         if row[:project] == '1'
#           HumanConnection.import(params[:file])
#           redirect_to root_url, notice: "Archivo plano subido con éxito"
#         else
#           redirect_to root_url, notice: "mierdaaaaaaa"
#         end

#       } 