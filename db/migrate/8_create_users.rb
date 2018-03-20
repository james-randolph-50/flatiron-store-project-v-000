class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
<<<<<<< HEAD
      t.integer :current_cart_id
      t.timestamps null: false
    end
  end
end
=======
      t.timestamps null: false
    end
  end
end
>>>>>>> 40fa763d34d5d9d5da7c7bb4ac6b114e415256ab
