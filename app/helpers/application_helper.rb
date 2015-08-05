module ApplicationHelper
	def poligono
		fa_icon "flag"
	end

	def no_poligono
		fa_icon "minus"
	end

	def bueno
		fa_icon "check"
	end

	def malo
		fa_icon "minus"
	end

	def fecha(f)
    f.strftime("%d-%m-%Y")
  end

  def proyecto(p)
  	if p == 1
  		"Conexión Humana"
  	elsif p == 2
  		"Propia"
  	elsif p == 3
  		"Arrenda"
  	elsif p == 4
  		"Colegio"
  	elsif p == 5
  		"Transmilenio"
  	elsif p == 6
  		"UTE"  		
  	end
  end

  def ruta_atras(r)
    if [:project] == 1
      r = conexion_humana_cameras_path
    elsif ruta == 2
      propia_cameras_path
    elsif ruta == 3
      arrendada_cameras_path
    elsif ruta == 4
      colegio_cameras_path
    elsif ruta == 5
      transmilenio_cameras_path
    elsif ruta == 6
      ute_cameras_path    
    end
  end
end


