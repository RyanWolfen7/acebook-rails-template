class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    p '#NEW DEF'
    p params
    p 'the format is:'
    p request.format.to_str
  end

  def create
    @comment = Comment.create(post_params)
    p '#CREATE DEF'
    p params
    p 'the format is:'
    p request.format.to_str
    redirect_to post_url(params[:id])
  end

  private

  def post_params
    params.require(:comment).permit(:post_id ,:message, :user_id)
  end
end
