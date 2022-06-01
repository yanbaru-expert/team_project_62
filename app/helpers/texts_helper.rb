module TextsHelper
  PHP_TEXTS_TITLE = "PHP".freeze
  RAILS_TEXTS_TITLE = "Ruby/Rails".freeze
  def select_pagetitle
    params[:genre] == "php" ? PHP_TEXTS_TITLE : RAILS_TEXTS_TITLE
  end
end
