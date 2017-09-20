class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_phone
      t.float  :total_price
      t.timestamps
    end
  end
end
