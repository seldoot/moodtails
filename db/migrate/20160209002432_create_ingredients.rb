class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingredient
      t.integer :amount
      t.text :unit

      t.timestamps null: false
    end
  end
end
