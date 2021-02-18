class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :post_id
      t.integer :receive_user_id

      t.timestamps
    end
  end
end
