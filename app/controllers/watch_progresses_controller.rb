class WatchProgressesController < ApplicationController
  before_action :set_movie, only: %i[create destroy]

  def create
    current_user.watch_progresses.create!(movie_id: @movie.id)
  end

  def destroy
    current_user.watch_progresses.find_by(movie_id: @movie.id).destroy!
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
