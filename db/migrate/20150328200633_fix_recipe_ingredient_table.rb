class FixRecipeIngredientTable < ActiveRecord::Migration
  def up

    drop_table :recipeingredients

    create_table :recipeingredients do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.string :amount
    end

    add_index :recipeingredients, :recipe_id
    add_index :recipeingredients, :ingredient_id

  end
end
