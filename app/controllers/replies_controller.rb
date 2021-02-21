class RepliesController < ApplicationController
  def new
    @reply = Reply.new
  end

  def create
  end

  def show
    @user = User.find(current_user.id)
    @receive = Post.where(receive_user_id: current_user.id)
  end

  private

  def reply_params
    params.require(:reply).permit(:post_id, :receive_user_id, :reply_content)
  end
end
