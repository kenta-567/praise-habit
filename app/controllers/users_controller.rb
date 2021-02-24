class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    # favorites = Favorite.where(user_id: current_user.id).pluck(:post_id)  # ログイン中のユーザーのお気に入りのpost_idカラムを取得
    # @favorite_list = Post.find(favorites)     # postsテーブルから、お気に入り登録済みのレコードを取得
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def unsubscribe
  end

  def withdrawal
  end


  private

  def user_params
    params.require(:user).permit(:nickname, :place, :job, :profile_image, :is_active)
  end
end
