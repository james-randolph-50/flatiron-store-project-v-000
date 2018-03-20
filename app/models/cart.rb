class Cart < ActiveRecord::Base

<<<<<<< HEAD
  has_many :line_items, dependent: :destroy
  has_many :items, through: :line_items
  belongs_to :user

=======
  has_many :line_items, dependent: :destory
  has_many :items, through: :line_items
  belongs_to :user
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def add_item(item_id)
    line_item = self.line_items.find_by(item_id: item_id)
    if line_item
      line_item.quantity += 1
    else
      line_item=self.line_items.build(item_id: item_id)
<<<<<<< HEAD
    end
    line_item
  end

=======
    end 
    line_item 
  end
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def total
    total = 0
    self.line_items.each do |line_item|
      total += line_item.item.price * line_item.quantity
    end
<<<<<<< HEAD
    return total
  end

=======
    return total 
  end
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def checkout
    self.status = "submitted"
    change_inventory
  end
<<<<<<< HEAD

=======
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def change_inventory
    if self.status = "submitted"
      self.line_items.each do |line_item|
        line_item.item.inventory -= line_item.quantity
        line_item.item.save
      end
    end
  end
<<<<<<< HEAD

  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user

=======
  
  has_many :line_items
  has_many :items, through: :line_items
  belongs_to :user
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def add_item(item_id)
    if item_ids.include?(item_id.to_i)
      current_line_item = line_items.find_by(item_id: item_id)
      current_line_item.quantity += 1
      current_line_item
    else
      line_items.build(item_id: item_id)
    end
  end
<<<<<<< HEAD

  def total
    line_items.inject(0) { |sum, line_item| sum + line_item.total}
  end

=======
  
  def total
    line_items.inject(0) { |sum, line_item| sum + line_item.total}
  end
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def checkout
    remove_inventory
    user.remove_cart
    update(status: 'submitted')
  end
<<<<<<< HEAD

  private

=======
  
  private
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
  def remove_inventory
    line_items.each do |line_item|
      line_item.item.remove(line_item.quantity)
    end
  end
<<<<<<< HEAD

=======
  
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab

end
