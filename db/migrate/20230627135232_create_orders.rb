class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :furniture, null: false, foreign_key: true
      t.boolean :available
      t.date :order_date
      t.decimal :booking_price
      t.boolean :delivery
      t.date :delivery_date
      t.decimal :delivery_price
      t.decimal :total_price

      t.timestamps
    end
  end
end
