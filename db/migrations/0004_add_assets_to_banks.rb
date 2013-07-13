class AddAssetsToBanks < ActiveRecord::Migration
  def up
    add_column :banks, :assets, :decimal, default: 0.00, null: false
  end

  def down
    remove_column :banks, :assets
  end
end