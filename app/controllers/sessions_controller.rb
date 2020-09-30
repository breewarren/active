class SessionsController < ApplicationController

    def new
    end
 
    def create
        session[:username] = params[:username]
        # byebug
        if  session[:username] == nil
            flash[:notice] = "Invalid entry. Please try again."
            redirect_to login_path
        elsif
            session[:username].empty?
            flash[:notice] = "Cannot be left empty. Please try again."
            redirect_to login_path
        else
            @user = User.find_by(username: params[:username])
            flash[:notice] = "Login Successful."
            redirect_to @user
        end
    end

    def destroy
        session.delete :username
        flash[:notice] = "Logout Successful."
        redirect_to '/'
        # redirect_to application_hello
    end


end