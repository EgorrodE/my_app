class CreateBooksAndChapters < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :rating
      t.[] :tags
      t.integer :category
      t.belongs_to :user, index: true
      t.timestamps null: false
    end

    create_table :chapters do |t|
      t.string :title
      t.integer :position
      t.text :text, :limit => 16777215
      t.belongs_to :book, index: true
      t.timestamps null: false
      t.integer :project_id

    end
  end
end
