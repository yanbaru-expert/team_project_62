class TextsController < ApplicationController
  def index
    @texts = Text.includes(:read_progresses).where(genre: Text::RAILS_GENRE_LIST)
  end

  def show
    @text = Text.find(params[:id])
  end
end
