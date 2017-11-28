class PostsController < ApplicationController
  def show
    @landmark = Landmark.find(params[:landmark_id])
    @post = @landmark.posts.find(params[:id])
  end
end
