class TextsController < ApplicationController
  def index
    @texts = if params[:genre].nil?
               Text.where(genre: ["basic", "git", "ruby", "rails"])
             else
               Text.where(genre: params[:genre])
             end
  end

  def show; end
end
