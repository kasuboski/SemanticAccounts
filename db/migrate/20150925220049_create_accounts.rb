class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :accounts, :name, unique: true
  end
end
