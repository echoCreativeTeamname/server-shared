class AddImageToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :imageurl, :string
  end
end
