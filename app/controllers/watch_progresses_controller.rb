class WatchProgressesController < ApplicationController
  def create
    current_user.watch_progresses.create!(movie_id: params[:movie_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    current_user.watch_progresses.destroy!(movie_id: params[:movie_id])
    redirect_back(fallback_location: root_path)
  end
end
