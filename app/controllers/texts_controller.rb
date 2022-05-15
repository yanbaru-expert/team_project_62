class TextsController < ApplicationController

 def index

  if params[:genre] == nil
    @texts = Text.all
  else
    @texts = Text.where(genre:[RAILS_GENRE_LIST])
  end

 end

 def show; 

 end

end
