class SessionsController < ApplicationController

    def new 
        @users = User.all
    end

    def create 
        @user = User.find_by(id: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user) 
        else
            flash[:alert] = "Invalid Password."
            redirect_to signin_path
        end
    end


    def destroy
        session.delete :user_id
        redirect_to root_path
    end
end