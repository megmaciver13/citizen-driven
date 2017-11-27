class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.all
  end

  def show
    @landmark = Landmark.find(params[:id])
  end
end
