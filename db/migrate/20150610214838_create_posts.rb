class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_name
      t.string :body

      t.timestamps null: false
    end
  end
end
