class TheatersController < ApplicationController

  def search; end

  def index
    @theaters = Theater.where(zip: params[:search])
  end
end