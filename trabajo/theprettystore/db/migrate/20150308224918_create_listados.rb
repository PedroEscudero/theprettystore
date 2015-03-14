class CreateListados < ActiveRecord::Migration
  def change
    create_table :listados do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.timestamps null: false
    end
  end
end
