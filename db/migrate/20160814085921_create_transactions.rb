class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :date
      t.float :bal
      t.float :dep
      t.float :wdl

      t.timestamps null: false
    end
  end
end
