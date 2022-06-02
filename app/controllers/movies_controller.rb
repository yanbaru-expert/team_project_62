class MoviesController < ApplicationController
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze
  PER_PAGE = 12

  def index
    @movies = params[:genre] == "php" ? switch_movies_by_genres("php") : switch_movies_by_genres(RAILS_GENRE_LIST)
  end

  private

  # ===== Rails動画教材かPHP動画教材のどちらを表示するかの処理 =====
  def switch_movies_by_genres(genre)
    Movie.where(genre: genre).order(id: :asc).page(params[:page]).per(PER_PAGE)
  end
end
