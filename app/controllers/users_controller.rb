class UsersController < ApplicationController



    def index

    end 
    
    
    def signup
    end


    def create
        user = User.new(user_params)
        if user.save
            session[:user_id]= user.id
            redirect_to :action =>'index'
        else
           flash[:errors] = user.errors.full_messages
            redirect_to :action =>'index'
        end
    end

    private 
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
