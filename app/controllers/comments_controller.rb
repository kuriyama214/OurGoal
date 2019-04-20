class CommentsController < ApplicationController
    def new
      @tweet = Tweet.find(params[:tweet_id])
      @comment = Comment.new
      @comment.tweet_id = @tweet.id
    end
    
    def create
      @comment = Comment.create(create_params)
      redirect_to :root and return
    end
    
    private
    def create_params
      params.require(:comment).permit(:text,:tweet_id).merge(user_id: current_user.id)
    end
end
