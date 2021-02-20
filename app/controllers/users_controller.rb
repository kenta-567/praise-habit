class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
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
