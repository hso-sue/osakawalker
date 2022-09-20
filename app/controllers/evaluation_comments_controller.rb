class EvaluationCommentsController < ApplicationController
  def create
    @comment = EvaluationComment.new(comment_params)
    @shop = Shop.find(params[:shop_id])
    if @comment.save
      redirect_to shop_path(id: @shop.id) 
    else
      @evaluation_comments = @shop.evaluation_comments.includes(:user).order("created_at DESC")
      render template: "shops/show"
    end
  end

  private
  def comment_params
    params.require(:evaluation_comment).permit(:title, :content, :rate).merge(user_id: current_user.id, shop_id: params[:shop_id])
  end
end