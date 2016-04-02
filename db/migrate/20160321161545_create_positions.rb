class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :position
      t.references :positionable, polymorphic: true, index: true
      t.timestamps null: false
    end
  end
end
