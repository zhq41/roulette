class CreateMice < ActiveRecord::Migration
  def change
    create_table :mice do |t|
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end
