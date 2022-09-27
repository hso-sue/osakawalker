class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @user = user
    @shops = user.shops
  end
end
