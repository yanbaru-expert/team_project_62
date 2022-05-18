class Text < ApplicationRecord
  
  RAILS_GENRE_LIST = %w[basic git ruby rails].freeze

  with_options presence: true do
    validates :genre
    validates :title
    validates :content
  end

  enum genre: {
    invisible: 0, # 非表示
    Basic: 1,
    Git: 2,
    Ruby: 3,
    Rails: 4,
    PHP: 5
  }
end
