class AddTodoToListTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :list_tags, :todo, foreign_key: true
  end
end
