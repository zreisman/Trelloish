class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :user_id, null: false, index: true
      t.string :title, null: false

      t.timestamps null: false
    end
  end
end
