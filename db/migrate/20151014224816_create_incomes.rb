class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :description
      t.string :status
      t.datetime :date_income
      t.decimal :currency_value
      t.references :source, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
