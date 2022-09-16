class EvaluationCommentsController < ApplicationController
  def create
    comment = EvaluationComment.create(comment_params)
    redirect_to "/shops/#{comment.shop.id}"
  end

  def avg_score
    unless self.comments.empty?
      comments.average(:rate_id).round(1)
    else
      0.0
    end
  end

  def avg_score_percentage
    unless self.comments.empty?
      comments.average(:rate_id).round(1).to_f*100/5
    else
      0.0
    end
  end

  private
  def comment_params
    params.require(:evaluation_comment).permit(:title, :content,:rate).merge(user_id: current_user.id, shop_id: params[:shop_id])
  end
end