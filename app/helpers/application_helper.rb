module ApplicationHelper
	def poligono
		content_tag(:span, "SI", class: "label label-success")
	end

	def no_poligono
		content_tag(:span, "NO", class: "label label-default")
	end

	def bueno
		fa_icon "check"
	end

	def malo
		fa_icon "close"
	end
end
