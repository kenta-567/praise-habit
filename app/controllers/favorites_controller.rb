class FavoritesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    if @post.user_id != current_user.id
      @favorite = Favorite.create(receive_user_id: current_user.id, post_id: @post.id)
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @post = @favorite.post
    @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:receive_user_id, :post_id)
  end

end
