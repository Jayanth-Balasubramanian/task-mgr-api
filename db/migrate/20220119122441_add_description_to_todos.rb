class AddDescriptionToTodos < ActiveRecord::Migration[7.0]
  def change
    add_column :todos, :description, :string
    add_column :todos, :deadline, :date
  end
end
