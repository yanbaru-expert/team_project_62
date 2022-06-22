class TextsController < ApplicationController
  def index
    @texts = Text.includes(:read_progresses).select_genre(params[:genre])
  end

  def show
    @text = Text.find(params[:id])
  end
end
