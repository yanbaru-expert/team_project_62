class Text < ApplicationRecord
  has_many :read_progresses, dependent: :destroy
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  with_options presence: true do
    validates :genre
    validates :title
    validates :content
  end

  def read_by?(user)
    read_progresses.any? { |read_progress| read_progress.user_id == user.id }
  end

  enum genre: {
    invisible: 0, # 非表示
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }

  def self.select_genre(params)
    if params == "php"
      where(genre: "php")
    else
      where(genre: RAILS_GENRE_LIST)
    end
  end
end
