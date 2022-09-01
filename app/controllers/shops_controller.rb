class ShopsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    
  end

  def new
    @shops = Shop.new
  end

end
