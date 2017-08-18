class TheatersController < ApplicationController

  def search; end

  def index
    term = params[:search_term]
    search_type = params[:search_type]

    @theaters = $redis.get(term)

    if @theaters.nil? || @theaters == ''
      filters = { "#{search_type}": term }
      @theaters = Theater.where(filters)

      @theaters.any? ? $redis.set(term, @theaters.to_json) : $redis.set(term, nil)
      $redis.expire(term, 24.hour.to_i)
    else
      @theaters = JSON.parse(@theaters)
    end

    @points = @theaters.try(:map) { |t| [t['lat'], t['lon']] }
    @theaters
  end
end
