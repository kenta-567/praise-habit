class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname
      t.integer :place, default: 0
      t.string :job
      t.string :profile_image
      t.string :encrypted_password
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
