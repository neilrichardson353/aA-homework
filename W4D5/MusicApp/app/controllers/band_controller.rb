class BandController < ApplicationController

  def show
    @band = Band.all
  end

  def index

  end

  def new

  end

  def create

  end

  def destroy

  end

  def edit

  end

  private
  def band_params
    params.require(:band).permit(:name)
  end
end
