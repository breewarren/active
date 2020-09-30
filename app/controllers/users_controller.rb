class UsersController < ApplicationController

    # before_action :current_user, only [:show, :edit, :update, :destroy]

    # def index
    #     @users = User.all
    # end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            flash[:notice] = "User successfully created."
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end
     
    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        flash[:notice] = "User successfully updated."
        redirect_to @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "User successfully deleted."
        redirect_to '/'
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password, :img_url)
    end

    # def current_user
    #     @user = User.find(params[:id])
    # end


end
