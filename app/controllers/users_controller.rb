class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
    end
    
    def edit
      
    end
    
    def update
      current_user.update(update_params)
    end
    
    
end
