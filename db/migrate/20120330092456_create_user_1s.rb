class CreateUser1s < ActiveRecord::Migration
  def change
    create_table :user_1s do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
