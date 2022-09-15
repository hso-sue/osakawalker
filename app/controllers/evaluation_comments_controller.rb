class EvaluationCommentsController < ApplicationController
  def create
    comment = EvaluationComment.create(comment_params)
    redirect_to "/shops/#{comment.shop.id}"
  end

  private
  def comment_params
    params.require(:evaluation_comment).permit(:title, :content,:rate).merge(user_id: current_user.id, shop_id: params[:shop_id])
  end
end