class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :date
      t.decimal :bal
      t.decimal :dep
      t.decimal :wdl
    end
  end
end
