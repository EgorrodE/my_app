class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.text :content
      t.integer :author_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
