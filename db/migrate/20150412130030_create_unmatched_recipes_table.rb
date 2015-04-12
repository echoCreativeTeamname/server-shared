class CreateUnmatchedRecipesTable < ActiveRecord::Migration
  def change
    create_table :unmatched_recipes do |t|
      t.string "name"
      t.text "contents"
      t.text "summary"
      t.string "imageurl"
      t.string "videourl"
      t.string "dish_type"
      t.integer "portions"
      t.float "cookingtime"
      t.text "ingredients"
    end
  end
end
