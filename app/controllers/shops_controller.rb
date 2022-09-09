class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :genre, only: [:index, :fashion, :food, :interior]

  def index
    @shops = Shop.order("created_at DESC")
  end

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

  def fashion
  end

  def food
  end

  def interior
  end

  def show
    @shop = Shop.find(params[:id])
  end 

  private

  def genre
    @fashion = Shop.where(shop_genre_id:2)
    @food = Shop.where(shop_genre_id:3)
    @interior = Shop.where(shop_genre_id:4)
  end

  def shop_params
    params.require(:shop).permit({images:[]}, :shop_genre_id, :shop_name, :introduction, :prefecture_id, :shop_city_id, :shop_address).merge(user_id: current_user.id)

  end

end
