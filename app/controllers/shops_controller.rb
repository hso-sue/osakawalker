class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :genre, only: [:index, :fashion, :food, :interior]
  before_action :common, only: [:show, :edit, :update, :destroy]


  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = EvaluationComment.new
    @comments = EvaluationComment.where(params[:shop_id])
    @evaluation_comments = @shop.evaluation_comments.includes(:user).order("created_at DESC")
  end 

  def edit
    unless @shop.user.id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    if @shop.update(shop_params)
      redirect_to shop_path(id: @shop.id)
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
    redirect_to root_path
  end

  def search
    @shops = Shop.search(params[:keyword])
  end

  private

  def genre
    @fashion = Shop.where(shop_genre_id:2).order("created_at DESC")
    @food = Shop.where(shop_genre_id:3).order("created_at DESC")
    @interior = Shop.where(shop_genre_id:4).order("created_at DESC")
  end

  def common
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit({images:[]}, :shop_genre_id, :shop_name, :introduction, :prefecture_id, :shop_city_id, :shop_address, :evaluation).merge(user_id: current_user.id)
  end
end
