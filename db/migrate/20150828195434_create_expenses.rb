class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :description
      t.decimal :value
      t.datetime :date
      t.references :categories, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
