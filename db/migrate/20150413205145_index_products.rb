class IndexProducts < ActiveRecord::Migration
  def change
    add_index :products, [:ingredient_id, :storechain_id], :unique => true
  end
end
