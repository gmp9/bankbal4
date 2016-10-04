class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :date
      t.decimal :bal
      t.decimal :dep
      t.decimal :wdl1
      t.decimal :wdl2
      t.decimal :wdl3
    end
  end
end
