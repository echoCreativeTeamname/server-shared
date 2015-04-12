class AddProductIdentifier < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :identifier
      t.index :identifier
    end
  end
end
