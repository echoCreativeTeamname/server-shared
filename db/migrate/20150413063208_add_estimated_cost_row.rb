class AddEstimatedCostRow < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
      t.float :estimated_cost
    end
  end
end
