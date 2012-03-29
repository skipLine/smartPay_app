class CreateFoodorders < ActiveRecord::Migration
  def change
    create_table :foodorders do |t|
      t.string :item
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
