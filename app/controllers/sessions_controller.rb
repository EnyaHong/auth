class SessionsController < ApplicationController
    def new
    end

    def create
        #check if the user exists
        @user = User.find_by({"email" => params["email"]})
        if @user 
            #if they do, check that they know their password
            if params["password"] == @user["password"]
                #if they do, sent them in...
                redirect_to "/companies"
            else
                redirect_to "sesiions/new"
            end
        else
            redirect_to "/sessions_new"
    end
end