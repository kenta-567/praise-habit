class PostsController < ApplicationController


  def index
    @users = User.all
  end

  def new
    @user = User.find(params[:id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save!
      redirect_to users_my_page_path(current_user.id)
    else
      render :new
    end
  end


  private

  def post_params
    params.require(:post).permit(:user_id, :receive_user_id, :posted_number, :post_content)
  end
end
