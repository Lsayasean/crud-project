class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :jewel_id, foreign_key: true
      t.integer :user_id, , foreign_key: true
      t.timestamps
    end
    add_index :favorites, [:jewel_id, :user_id], unique: true
  end
end
