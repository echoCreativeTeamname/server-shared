class AddIndexToOpeninghours < ActiveRecord::Migration
  def change
    add_index :openinghours, :date
  end
end
