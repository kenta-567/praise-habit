class UsersController < ApplicationController
  def show
    @post = Post.where(user_id: current_user.id).page(params[:user_page]).per(4)
    @user = User.find(current_user.id)
    favorites = Favorite.where(receive_user_id: current_user.id).pluck(:post_id)
    @favorites = Post.where(id: favorites).page(params[:favorite_page]).per(4)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_my_page_path(@user.id)
    else
      render :edit
    end
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdrawal
    @user = User.find(params[:id])
    @user.update!(is_active: false)
    reset_session
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :place, :job, :profile_image, :is_active)
  end
end
