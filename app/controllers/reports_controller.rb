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
    @hc_bien = Camera.where(condition: true, project: 1).all.count
    @o_bien = Camera.where(condition: true, project: 2).all.count
    @l_bien = Camera.where(condition: true, project: 3).all.count
    @s_bien = Camera.where(condition: true, project: 4).all.count
    @u_bien = Camera.where(condition: true, project: 5).all.count
    @t_bien = Camera.where(condition: true, project: 6).all.count
    @total_bien = Camera.where(condition: true).all.count
  end

  def estado_mal
    @hc_mal = Camera.where(condition: false, project: 1).all.count
    @o_mal = Camera.where(condition: false, project: 2).all.count
    @l_mal = Camera.where(condition: false, project: 3).all.count
    @s_mal = Camera.where(condition: false, project: 4).all.count
    @t_mal = Camera.where(condition: false, project: 5).all.count
    @u_mal = Camera.where(condition: false, project: 6).all.count
    @total_mal = Camera.where(condition: false).all.count
  end

  def cantidad_cam
    @hc_cantidad = Camera.where(project: 1).all.count
    @o_cantidad = Camera.where(project: 2).all.count
    @l_cantidad = Camera.where(project: 3).all.count
    @s_cantidad = Camera.where(project: 4).all.count
    @t_cantidad = Camera.where(project: 5).all.count
    @u_cantidad = Camera.where(project: 6).all.count
    @total_cam = Camera.all.count
  end

  def cosec
    @hc_cosec = Camera.group(:cosec).where(project: 1).count
    @o_cosec = Camera.group(:cosec).where(project: 2).count
    @l_cosec = Camera.group(:cosec).where(project: 3).count
    @s_cosec = Camera.group(:cosec).where(project: 4).count
    @t_cosec = Camera.group(:cosec).where(project: 5).count
    @u_cosec = Camera.group(:cosec).where(project: 6).count
    @total_cosec = Camera.group(:cosec).count
  end

  def localidad
    @hc_localidad = Camera.group(:location).where(project: 1).count
    @o_localidad = Camera.group(:location).where(project: 2).count
    @l_localidad = Camera.group(:location).where(project: 3).count
    @s_localidad = Camera.group(:location).where(project: 4).count
    @t_localidad = Camera.group(:location).where(project: 5).count
    @u_localidad = Camera.group(:location).where(project: 6).count
    @total_loc = Camera.group(:location).count
  end
end