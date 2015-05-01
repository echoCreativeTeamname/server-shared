class RemoveUuidForProducts < ActiveRecord::Migration
  def up
  	remove_column :products, :uuid
  end
end
