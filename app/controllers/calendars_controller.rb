class CalendarsController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @posts = Post.where(user_id: current_user)
  end
end
