class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.string :name
      t.boolean :done
      t.references :label, foreign_key: true

      t.timestamps
    end
  end
end
