class ReportsController < ApplicationController
  def index
    @conexion = poligono
  	@arriendo = poligono
  	@propia = poligono
  	@colegio = poligono
  	@transmi = poligono
    @ute = poligono
    @total_pol = poligono

    @hc_bien = estado_bien
    @l_bien = estado_bien
    @o_bien = estado_bien
    @s_bien = estado_bien
    @u_bien = estado_bien
    @t_bien = estado_bien
    @total_bien = estado_bien

    @hc_mal = estado_mal
    @l_mal = estado_mal
    @o_mal = estado_mal
    @s_mal = estado_mal
    @u_mal = estado_mal
    @t_mal = estado_mal
    @total_mal = estado_mal

    @hc_cantidad = cantidad_cam
    @l_cantidad = cantidad_cam
    @o_cantidad = cantidad_cam
    @s_cantidad = cantidad_cam
    @u_cantidad = cantidad_cam
    @t_cantidad = cantidad_cam
    @total_cam = cantidad_cam


    @hc_cosec = cosec
    @l_cosec = cosec
    @o_cosec = cosec
    @s_cosec = cosec
    @u_cosec = cosec
    @t_cosec = cosec
    @total_cosec = cosec

    @hc_localidad = localidad
    @l_localidad = localidad
    @o_localidad = localidad
    @s_localidad = localidad
    @u_localidad = localidad
    @t_localidad = localidad
    @total_loc = localidad
  end


  def poligono
  	@conexion = Camera.where(polygon: true, project: 1).all.count 
    @propia = Camera.where(polygon: true, project: 2).all.count 	
  	@arriendo = Camera.where(polygon: true, project: 3).all.count	  	
  	@colegio =  Camera.where(polygon: true, project: 4).all.count   	
  	@transmi = Camera.where(polygon: true, project: 5).all.count
    @ute = Camera.where(polygon: true, project: 6).all.count 
    @total_pol = Camera.where(polygon: true).all.count

  end

  def estado_bien
    @hc_bien = Camera.where(condition: true, project: 1).sum(:qty)
    @o_bien = Camera.where(condition: true, project: 2).sum(:qty)
    @l_bien = Camera.where(condition: true, project: 3).sum(:qty)
    @s_bien = Camera.where(condition: true, project: 4).sum(:qty)
    @u_bien = Camera.where(condition: true, project: 5).sum(:qty)
    @t_bien = Camera.where(condition: true, project: 6).sum(:qty)
    @total_bien = Camera.where(condition: true).sum(:qty)
  end

  def estado_mal
    @hc_mal = Camera.where(condition: false, project: 1).sum(:qty)
    @o_mal = Camera.where(condition: false, project: 2).sum(:qty)
    @l_mal = Camera.where(condition: false, project: 3).sum(:qty)
    @s_mal = Camera.where(condition: false, project: 4).sum(:qty)
    @t_mal = Camera.where(condition: false, project: 5).sum(:qty)
    @u_mal = Camera.where(condition: false, project: 6).sum(:qty)
    @total_mal = Camera.where(condition: false).sum(:qty)
  end

  def cantidad_cam
    @hc_cantidad = Camera.where(project: 1).sum(:qty)
    @o_cantidad = Camera.where(project: 2).sum(:qty)
    @l_cantidad = Camera.where(project: 3).sum(:qty)
    @s_cantidad = Camera.where(project: 4).sum(:qty)
    @t_cantidad = Camera.where(project: 5).sum(:qty)
    @u_cantidad = Camera.where(project: 6).sum(:qty)
    @total_cam = Camera.sum(:qty)
  end

  def cosec
    @hc_cosec = Camera.group(:cosec).where(project: 1).sum(:qty)
    @o_cosec = Camera.group(:cosec).where(project: 2).sum(:qty)
    @l_cosec = Camera.group(:cosec).where(project: 3).sum(:qty)
    @s_cosec = Camera.group(:cosec).where(project: 4).sum(:qty)
    @t_cosec = Camera.group(:cosec).where(project: 5).sum(:qty)
    @u_cosec = Camera.group(:cosec).where(project: 6).sum(:qty)
    @total_cosec = Camera.group(:cosec).sum(:qty)
  end

  def localidad
    @hc_localidad = Camera.group(:location).where(project: 1).sum(:qty)
    @o_localidad = Camera.group(:location).where(project: 2).sum(:qty)
    @l_localidad = Camera.group(:location).where(project: 3).sum(:qty)
    @s_localidad = Camera.group(:location).where(project: 4).sum(:qty)
    @t_localidad = Camera.group(:location).where(project: 5).sum(:qty)
    @u_localidad = Camera.group(:location).where(project: 6).sum(:qty)
    @total_loc = Camera.group(:location).sum(:qty)
  end
end