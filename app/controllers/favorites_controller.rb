class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    flash[:success]="お気に入り登録しました。"
    redirect_to user_path(id: current_user)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    flash[:success]="お気に入り解除じました。"
    redirect_to user_path(id: current_user)
  end
end
