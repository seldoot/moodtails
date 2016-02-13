class ChangeTable < ActiveRecord::Migration
  def change
  	change_table :ingredients do |t|
  		t.rename :ingredient, :ing_item
  	end
  end
end
