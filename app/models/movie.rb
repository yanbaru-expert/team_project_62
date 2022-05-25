class Movie < ApplicationRecord
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  with_options presence: true do
    validates :genre
    validates :title
    validates :url
  end

  enum genre: {
    invisible: 0, # 非表示
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  # ===== Rails動画教材かPHP動画教材のどちらを表示するかの処理 =====
  def self.switch_movies_by_genres(params)
    if params[:genre] == "php"
      Movie.where(genre: "php").order(id: :asc)
    else
      Movie.where(genre: Movie::RAILS_GENRE_LIST).order(id: :asc)
    end
  end
end
