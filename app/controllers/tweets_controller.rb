class TweetsController < ApplicationController
    
    def creat
      @tweet = Tweet.new
      Tweet.create(create_params)
      redirect_to :root and return
    end
    
    def show
      @tweet = Tweet.find(params[:id])
    end
    
    
    private
    def create_params
      params.require(:tweet).permit(:text).merge(user_id: current_user.id)
    end
end
