class MoviesController < ApplicationController
  PER_PAGE = 12

  def index
    @movies = Movie.switch_movies_by_genres(params).page(params[:page]).per(PER_PAGE)
  end
end
