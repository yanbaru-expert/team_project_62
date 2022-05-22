module MoviesHelper
  PHP_MOVIES_TITLE = "PHP動画教材".freeze
  RAILS_MOVIES_TITLE = "Ruby/Rails 動画".freeze

  def embed_youtube(url)
    tag.iframe(
      width: "100%",
      height: 200,
      src: url,
      frameborder: 0,
      allow: "accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",
      allowfullscreen: true
    )
  end

  # ===== 動画教材のタイトルを切り替える処理 =====
  def switch_movies_title
    params[:genre] == "php" ? PHP_MOVIES_TITLE : RAILS_MOVIES_TITLE
  end
end
