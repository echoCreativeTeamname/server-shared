class ChangeDefaultValueHealthclass < ActiveRecord::Migration
  def up
    change_column :ingredients, :healthclass, :integer, default: 1
    change_column :storechains, :healthclass, :integer, default: 1
  end

  def down
    change_column :ingredients, :healthclass, :integer, default: false
    change_column :storechains, :healthclass, :integer, default: false
  end
end
