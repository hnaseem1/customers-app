class AddOrderColumns < ActiveRecord::Migration[5.2]
  def up
    change_table :orders do |t|
      t.integer :ordernumber
      t.date :date
    end
  end

  def down
    change_table :orders do |t|
      t.remove :email, :address, :name
    end
  end
end
