class SessionsController < ApplicationController
    def create
        email = params[:user][:email]
        password = params[:user][:password]
        user = User.find_by_credentials(email, password)

        if user
            login(user)
            redirect_to user_url
        else
            flash.now[:errors] = ['SIKE THAS THE WRONG NUMBA']
        end
    end

    def destroy
        logout
        redirect_to new_session_url
    end
end
