class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :expense_date
      t.string :establishment
      t.string :description
      t.decimal :currency_value
      t.date :due_date
      t.string :status

      t.references :source, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :period, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
