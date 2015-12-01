class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :status

      t.timestamps null: false
    end
  end
end
