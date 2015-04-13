class IndexProductsMore < ActiveRecord::Migration
  def change
    add_index :products, :ingredient_id
  end
end
