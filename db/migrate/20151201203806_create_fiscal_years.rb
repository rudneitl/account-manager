class CreateFiscalYears < ActiveRecord::Migration
  def change
    create_table :fiscal_years do |t|
      t.string :name
      t.integer :year
      t.string :status

      t.timestamps null: false
    end
  end
end
