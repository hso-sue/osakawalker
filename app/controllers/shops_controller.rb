class ShopsController < ApplicationController
  def index
    
  end

  def new
    @shops = Shop.new
  end

end
