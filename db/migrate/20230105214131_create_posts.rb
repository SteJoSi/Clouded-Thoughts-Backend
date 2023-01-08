class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :date
      t.string :title
      t.text :body
    end
  end
end
