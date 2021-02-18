class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :receive_user_id
      t.integer :posted_number
      t.text :post_content

      t.timestamps
    end
  end
end
