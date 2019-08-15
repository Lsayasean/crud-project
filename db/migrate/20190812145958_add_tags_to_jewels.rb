class AddTagsToJewels < ActiveRecord::Migration[5.2]
  def change
    add_column :jewels, :tags, :string
  end
end
