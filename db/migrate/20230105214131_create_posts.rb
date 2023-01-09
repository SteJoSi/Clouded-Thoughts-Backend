class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :date
      t.string :title
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end
end
