class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.decimal :author_id
      t.timestamps null: true
    end
  end
end
