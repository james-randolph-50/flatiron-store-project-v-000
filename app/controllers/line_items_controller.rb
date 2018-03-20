class LineItemsController < ApplicationController
<<<<<<< HEAD
=======
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def create
    current_user.create_current_cart unless current_user.current_cart
    line_item = current_user.current_cart.add_item(params[:item_id])
    if line_item.save
      redirect_to cart_path(current_user.current_cart), {notice: 'Item added to cart!'}
    else
<<<<<<< HEAD
      redirect_to store_path, {notice: 'Unable to add item'}
    end
  end
=======
      redirect_to store_path. {notice: 'Unable to add item'}
    end
  end

>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
end
