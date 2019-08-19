class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :jewels do |t|
      # t.index [:user_id, :jewel_id]
      # t.index [:jewel_id, :user_id]
    end
  end
end
