class DropTodoItems < ActiveRecord::Migration[7.0]
  def up
    drop_table :todo_items
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
