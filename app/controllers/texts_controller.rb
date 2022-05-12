class TextsController < ApplicationController
  
  def index

    if params[:genre] == nil
      @tests = Text.where(genre:[basic git ruby rails])
      binding.pry
    else
      @tests = Text.where(genre:params[:genre])
    end
  end

  def show; end
end
