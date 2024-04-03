class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :explanation, null: false
      t.integer :price, null: false
      t.integer :stock, null: false, default: 0

      t.timestamps
    end
  end
end
