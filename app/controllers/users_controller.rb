class UsersController < ApplicationController
	before_action :authenticate_user!
   
   def update
     if current_user.update(user_params)
       flash[:notice] = "Información del usuario actualizada correctamente."
       redirect_to edit_user_registration_path
     else
       flash[:error] = "Información inválida del usuario."
       redirect_to edit_user_registration_path
     end
   end

   def show
     @user = User.find(params[:id])
     authorize @user
   end
 
   private
 
   def user_params
     params.require(:user).permit(:name)
   end
end
