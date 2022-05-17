class MoviesController < ApplicationController
  def index
    @movies = Movie.where(genre: Movie::RAILS_GENRE_LIST).order(id: :asc)
  end
end
