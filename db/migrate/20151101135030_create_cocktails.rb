class CreateCocktails < ActiveRecord::Migration
  def change
    create_table :cocktails do |t|
      t.string :drink_name
      t.references :mood, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
