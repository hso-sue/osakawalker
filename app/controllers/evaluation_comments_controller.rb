class EvaluationCommentsController < ApplicationController
  def create
    comment = EvaluationComment.create(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:evaluation_comment).permit(:title, :content).merge(user_id: current_user.id, shop_id: params[:shop_id])
  end
end