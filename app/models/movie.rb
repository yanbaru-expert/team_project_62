class Movie < ApplicationRecord
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  has_many :watch_progresses, dependent: :destroy

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
      Movie.includes(:watch_progresses).where(genre: "php").order(id: :asc)
    else
      Movie.includes(:watch_progresses).where(genre: RAILS_GENRE_LIST).order(id: :asc)
    end
  end

  def watched_or_not?(user)
    watch_progresses.any? { |watch_progress| watch_progress.user_id == user.id }
  end
end
