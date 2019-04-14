class TopController < ApplicationController
  def index
    @tweet = Tweet.new
  end
end