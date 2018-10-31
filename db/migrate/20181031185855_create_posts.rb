class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :author_post
      t.text :content_post
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
