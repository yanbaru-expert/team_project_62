class TextsController < ApplicationController
  
  def index

    if params[:genre] == nil
      @texts = Text.where(genre: ["basic", "git", "ruby", "rails"])
    else
      @texts = Text.where(genre: params[:genre])
    end
  end

  def show; end
end
