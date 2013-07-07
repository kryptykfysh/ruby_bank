class CreateAccountsTable < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string :name, null: false
      t.string :hut_number, null: false
      t.string :account_number, null: false
      t.integer :bank_id, null: false

      t.timestamps
    end

    add_index :accounts, :bank_id
  end

  def down
    drop_table :accounts
  end
end