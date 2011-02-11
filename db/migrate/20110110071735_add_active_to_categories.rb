class AddActiveToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :active, :integer
  end

  def self.down
    remove_column :categories, :active
  end
end
