class TopController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end
end