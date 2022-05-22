class MoviesController < ApplicationController
  def index
    @movies = Movie.switch_movies_by_genres(params)
  end
end
