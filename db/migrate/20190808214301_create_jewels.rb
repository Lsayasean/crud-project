class CreateJewels < ActiveRecord::Migration[5.2]
  def change
    create_table :jewels do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
