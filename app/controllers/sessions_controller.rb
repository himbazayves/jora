class SessionsController < ApplicationController


    def create

        user=User.find_by(email: params[:email] )
          if user && user.authenticate(params[:password])
            session[:user_id]= user.id
            redirect_to movie_list_path

          else
            flash[:errors] = ["invalid commbination"]
            redirect_back(fallback_location: root_path)
          end


    end
end
