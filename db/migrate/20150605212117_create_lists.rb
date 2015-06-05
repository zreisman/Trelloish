class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :board_id, null: false, index: true
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
