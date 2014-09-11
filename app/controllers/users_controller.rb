class UsersController < ApplicationController
	def new
  	@titre = "Inscription"
  	@user = User.new
  	end

	def show
  	@user = User.find(params[:id])
  	end

	def create
    @user = User.create(user_params)   # Not the final implementation!
    	if @user.save
    		flash[:success] = "Bienvenue, vous êtes maintenant inscrit"
       		redirect_to @user
    	else
      	 @titre = "Inscription"
      	render 'new'
    	end
	end

	def user_params
  	params.require(:user).permit(:nom, :email, :password, :password_confirmation)
 	end    

end
