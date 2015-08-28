class CameraPolicy < ApplicationPolicy
  def index? 
    ( user.present? )
  end
  def show?
  	( user.present? )
  end
  def new?
  	( user.present? )  	
  end
  def create?
  	( user.present? )  	
  end
  def edit?
  	( user.present? )  	
  end
  def update?
  	( user.present? )  	
  end
  def destroy?
    update?
  end
  def conexion_humana?
  	( user.present? )
  end
  def propia?
    ( user.present? )
  end

  def arrendada?
    ( user.present? )
  end

  def colegio?
    ( user.present? )
  end

  def transmilenio?
    ( user.present? )
  end

  def ute?
    ( user.present? )
  end
end