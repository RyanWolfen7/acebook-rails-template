class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(post_params)
    redirect_to post_url(params[:id])
  end

  private

  def post_params
    params.require(:comment).permit(:message, :user_id)
  end
end
