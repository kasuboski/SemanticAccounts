class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :account, index:true
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :transactions, :name, unique: true
  end
end
