class RepliesController < ApplicationController
  def new
    @user = User.find(params[:id])
    @post = Post.find(params["post_id"])
    @reply = Reply.new
  end

  def create
    @post = Post.find(params["reply"]["post_id"])
    @post.replies.build(reply_params)
    if @post.save
      redirect_to reply_path(current_user.id)
    else
      @reply = Reply.new
      @user = User.find(params[:reply][:receive_user_id])
      render :new
    end
  end

  def show
    @user = User.find(current_user.id)
    @receives = Post.where(receive_user_id: current_user.id).page(params[:receive_page]).per(4)
    @thanks = Post.where(user_id: current_user.id).page(params[:thanks_page]).per(4)
  end

  private

  def reply_params
    params.require(:reply).permit(:post_id, :receive_user_id, :reply_content)
  end
end
