class AddForeignKeyToOrders < ActiveRecord::Migration[5.2]

  def up
    change_table :orders do |t|
    t.integer :customer_id
    end
  end

  def down
    change_table :orders do |t|
      t.remove :email, :address, :name, :ordernumber
    end
  end

end
