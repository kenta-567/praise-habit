class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    favorites = Favorite.where(receive_user_id: current_user.id).pluck(:post_id)
    @favorites = Post.find(favorites)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_my_page_path(@user.id)
    else
      render :action => :edit
    end
  end

  def unsubscribe
    @user = User.find(params[:id])
  end

  def withdrawal
    @user = User.find(params[:id])
    @user.update(is_active: false)
    reset_session
    redirect_to root_path
  end


  private

  def user_params
    params.require(:user).permit(:nickname, :place, :job, :profile_image, :is_active)
  end
end
