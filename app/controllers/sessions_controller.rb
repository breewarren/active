class SessionsController < ApplicationController

    def new
    end
 
    def create
        @user = User.find_by(username: params[:username])
        # byebug
        if @user && @user.authenticate(params[:password])
            # byebug
            session[:user_id] = @user.id
            flash[:notice] = "Login Successful."
            redirect_to @user
        else
            flash[:notice] = "Login invalid. Please try again."
            redirect_to login_path
        end
    end

    def destroy
        session.delete :username
        flash[:notice] = "Logout Successful."
        redirect_to '/'
    end


    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end


end