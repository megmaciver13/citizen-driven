class PostsController < ApplicationController
  def new
    @landmark = Landmark.find(params[:landmark_id])
    @post = @landmark.posts.new
  end

  def create
    @landmark = Landmark.find(params[:landmark_id])
    @landmark.posts.create(post_params)
    redirect_to landmark_path(@landmark)
  end

  def show
    @landmark = Landmark.find(params[:landmark_id])
    @post = @landmark.posts.find(params[:id])
  end

  def edit
    @landmark = Landmark.find(params[:landmark_id])
    @post = @landmark.posts.find(params[:id])
  end

  def update
    @landmark = Landmark.find(params[:landmark_id])
    @post = @landmark.posts.find(params[:id])
    @post.update(post_params)
  end

  def destroy
    @landmark = Landmark.find(params[:landmark_id])
    @post = @landmark.posts.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :photo_url, :content, :inquiry_type)
  end
end
