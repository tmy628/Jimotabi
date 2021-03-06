class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :caption, null: false
      t.string :prefecture_name, null: false
      t.string :image_id
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
