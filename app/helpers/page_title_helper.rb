module PageTitleHelper
    PHP_PAGE_TITLE = "PHP".freeze
    RAILS_PAGE_TITLE = "Ruby/Rails".freeze
  
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
    def switch_page_title
      params[:genre] == "php" ? PHP_PAGE_TITLE : RAILS_PAGE_TITLE
    end
  end
  