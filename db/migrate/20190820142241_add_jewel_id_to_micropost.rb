class AddJewelIdToMicropost < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :jewel_id, :integer
  end
end
