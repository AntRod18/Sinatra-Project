class Posts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :post
      t.integer :user_id
    end
  end
end
