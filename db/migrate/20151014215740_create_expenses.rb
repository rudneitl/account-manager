class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :description
      t.string :status
      t.datetime :date_expense
      t.decimal :currency_value

      t.timestamps null: false
    end
  end
end
