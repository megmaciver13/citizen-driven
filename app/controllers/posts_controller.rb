class PostsController < ApplicationController
  def new
    @neighborhood = Neighborhoodfind(params[:neighborhood_id])
    @post = @neighborhood.posts.new
  end

  def create
    @neighborhood = Neighborhoodfind(params[:neighborhood_id])
    @neighborhood.posts.create(post_params)
    redirect_to neighborhood_path(@neighborhood)
  end

  def show
    @neighborhood = Neighborhoodfind(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
  end

  def edit
    @neighborhood = Neighborhoodfind(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
  end

  def update
    @neighborhood = Neighborhoodfind(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
    @post.update(post_params)
    redirect_to neighborhood_post_path(@neighborhood, @post)
  end

  def destroy
    @neighborhood = Neighborhoodfind(params[:neighborhood_id]))
    @post = @neighborhood.posts.find(params[:id])
    @post.destroy
    redirect_to neighborhood_path(@neighborhood)
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :photo_url, :location, :content, :inquiry_type)
  end
end
