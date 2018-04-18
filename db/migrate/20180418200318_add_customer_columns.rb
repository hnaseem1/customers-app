class AddCustomerColumns < ActiveRecord::Migration[5.2]
  def up
    change_table :customers do |t|
      t.string :email
      t.string :address
      t.string :name
    end
  end

  def down
    change_table :customers do |t|
      t.remove :email, :address, :name
    end
  end
end
