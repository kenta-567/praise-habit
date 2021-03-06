class CalendarsController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @post_day = current_user.posts.where("created_at >= ?", Date.today).count
  end
end
