class Posts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :user_id
      t.string :gamer_tag
      t.string :game
      t.string :platform
      t.timestamps 
    end
  end
end
