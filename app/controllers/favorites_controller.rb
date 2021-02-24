class FavoritesController < ApplicationController

  before_action :set_post
  before_action :authenticate_user!

  def create
    if @post.user.not_current_user?(current_user)   # 投稿者本人以外に限定
      @favorite = Favorite.create(user_id: current_user.id, post_id: @post.id)
    end
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, post_id: @post.id)
    @favorite.destroy
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

end
