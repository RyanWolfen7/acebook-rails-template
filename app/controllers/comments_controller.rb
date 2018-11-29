class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.creat(post_params)
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:comment).permit(:message, :user_id)
  end
end
