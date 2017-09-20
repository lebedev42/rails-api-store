class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string  :name
      t.string  :description
      t.string  :img_src
      t.float   :price
      t.integer :available_quantity
      t.timestamps
    end
  end
end
