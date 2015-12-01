class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.date :income_date
      t.string :description
      t.decimal :currency_value
      t.date :likely_date
      t.string :status

      t.references :source, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :period, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
