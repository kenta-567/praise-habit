class PostsController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).order(name: :asc).page(params[:page])
    @rankings = User.find(Post.group(:user_id).order('count(user_id) desc').limit(10).pluck(:user_id))
  end

  def new
    @user = User.find(params[:id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to users_my_page_path
    else
      @user = User.find(params[:post][:receive_user_id])
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:user_id, :receive_user_id, :post_content)
  end
end
