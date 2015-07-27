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
end


