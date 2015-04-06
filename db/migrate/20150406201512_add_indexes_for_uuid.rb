class AddIndexesForUuid < ActiveRecord::Migration
  def change
    add_index :users, :uuid, :unique => true
    add_index :storechains, :uuid, :unique => true
    add_index :ingredients, :uuid, :unique => true
    add_index :recipes, :uuid, :unique => true
    add_index :products, :uuid, :unique => true
    add_index :stores, :uuid, :unique => true
  end
end
