module ApplicationHelper
	def poligono
		content_tag(:span, "SI", class: "label label-success")
	end

	def no_poligono
		content_tag(:span, "NO", class: "label label-default")
	end

	def bueno
		content_tag(:span, "Buena", class: "label label-success")
	end

	def malo
		content_tag(:span, "Malo", class: "label label-danger")
	end
end
