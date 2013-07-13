class CreateTransactionsTable < ActiveRecord::Migration
  def up
    create_table :transactions do |t|
      t.integer :account_id, null:false
      t.string :type, null: false
      t.decimal :amount, default: 0.00

      t.timestamps
    end

    add_index :transactions, :account_id
  end

  def down
    drop_table :transactions
  end
end