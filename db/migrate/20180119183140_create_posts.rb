class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, comment: "title"
      t.text :content, comment: "content"

      t.timestamps
    end
  end
end
