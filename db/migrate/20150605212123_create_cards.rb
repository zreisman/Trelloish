class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :list_id, null: false, index: true
      t.text :body, null: false

      t.timestamps null: false
    end
  end
end
