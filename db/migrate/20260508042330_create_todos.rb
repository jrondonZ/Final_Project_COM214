class CreateTodos < ActiveRecord::Migration[8.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :priority
      t.boolean :completed
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
