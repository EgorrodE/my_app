class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.timestamps null: false
    end

    create_table :book_tags do |t|
      t.belongs_to :book, index: true
      t.belongs_to :tag, index: true
    end
  end
end
