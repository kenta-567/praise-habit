class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.integer :post_id
      t.integer :receive_user_id
      t.text :reply_content

      t.timestamps
    end
  end
end
