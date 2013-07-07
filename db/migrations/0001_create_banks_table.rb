class CreateBanksTable < ActiveRecord::Migration
  def up
    create_table :banks do |t|
      t.string :name, unique: true, null: false
    end
  end

  def down
    drop_table :banks
  end
end