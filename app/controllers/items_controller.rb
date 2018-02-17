class ItemsController < ApplicationController

  def show 
    @item = Item.fin(params[:id])
  end

end
