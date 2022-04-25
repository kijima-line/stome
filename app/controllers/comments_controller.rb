class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to stock_path(params[:stock_id])
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, stock_id: params[:stock_id])
  end
end
