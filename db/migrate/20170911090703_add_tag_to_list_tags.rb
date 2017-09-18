class AddTagToListTags < ActiveRecord::Migration[5.0]
  def change
    add_reference :list_tags, :tag, foreign_key: true
  end
end
