class PostsController < ApplicationController
  def new
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @post = @neighborhood.posts.new
  end

  def create
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @post = @neighborhood.posts.create(post_params.merge(user: current_user))
    redirect_to neighborhood_path(@neighborhood)
  end

  def show
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
  end

  def edit
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
    if @post.user != current_user
      flash[:alert] = "Only the author of this post can edit it!"
      redirect_to neighborhood_post_path(@neighborhood, @post)
    end
  end

  def update
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
    if @post.user == current_user
      @post.update(post_params)
    else
      flash[:alert] = "Only the author of this post can edit it!"
    end
    redirect_to neighborhood_post_path(@neighborhood, @post)
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @post = @neighborhood.posts.find(params[:id])
    if @post.user == current_user
      @post.destroy
      redirect_to neighborhood_path(@neighborhood)
    else
      flash[:alert] = "Only the author of this post can delete it!"
      redirect_to neighborhood_post_path(@neighborhood, @post)
    end
  end

  private
  def post_params
    params.require(:post).permit(:author, :title, :photo_url, :location, :content, :inquiry_type)
  end
end
