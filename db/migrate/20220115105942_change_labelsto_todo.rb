class ChangeLabelstoTodo < ActiveRecord::Migration[7.0]
  def change
    rename_table :, :todos
  end
end
