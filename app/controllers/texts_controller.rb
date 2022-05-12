class TextsController < ApplicationController
  
  def index
    
    if params[:genre] == nil
      @tests = Text.where(genre:[%w[basic git ruby rails]])
    else
      @tests = Text.where(genre:params[:genre])
    end
   
  end

  def show; end
end
