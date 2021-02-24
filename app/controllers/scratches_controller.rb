class ScratchesController < ApplicationController
    def new 
        @user = Scratch.new 
    end 

    def create 
        @user = Scratch.new(params[:user])
        if @user.save
            redirect_to root_url, notice: "Welcome aboard"
        else 
            render "new"
        end 
    end 

end
