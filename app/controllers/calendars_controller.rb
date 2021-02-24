class CalendarsController < ApplicationController

  def show
    @user = User.find(current_user.id)
    @post_month = current_user.posts.where(Post.arel_table[:created_at].gt(1.month.ago)).count
    @post_day = current_user.posts.where(Post.arel_table[:created_at].gt(1.day.ago)).count
  end
end
