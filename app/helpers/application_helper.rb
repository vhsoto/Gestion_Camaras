module ApplicationHelper
	def poligono
		fa_icon "check"
	end

	def no_poligono
		fa_icon "minus"
	end

	def bueno
		fa_icon "thumbs-up"
	end

	def malo
		fa_icon "thumbs-down"
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
      result = case r
        when 1 then conexion_humana_cameras_path
        when 2 then propia_cameras_path
        when 3 then arrendada_cameras_path
        when 4 then colegio_cameras_path
        when 5 then transmilenio_cameras_path
        when 6 then ute_cameras_path    
      end
      return result
  end
end


