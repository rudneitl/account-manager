class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :name
      t.string :description
      t.string :status
      t.date :initial_date
      t.date :final_date
      t.references :fiscal_year

      t.timestamps null: false
    end
  end
end
