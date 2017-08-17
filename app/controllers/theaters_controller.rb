class TheatersController < ApplicationController

  def search; end

  def index
    zip = params[:search]
    @theaters = $redis.get(zip)

    if @theaters.nil?
      @theaters = Theater.where(zip: zip).order(:name)

      $redis.set(zip, @theaters.to_json) if @theaters.any?
      $redis.expire(zip, 24.hour.to_i)
    end

    @theaters
  end
end