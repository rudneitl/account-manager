class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :description
      t.string :color

      t.timestamps null: false
    end
  end
end
