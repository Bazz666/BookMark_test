class CreateBookmarkTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmark_types do |t|
      t.references :bookmark, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end