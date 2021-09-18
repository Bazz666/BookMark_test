class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :bookmarks, :categories do |t|
      t.index [:bookmark_id, :category_id]
      t.index [:category_id, :bookmark_id]
    end
  end
end
