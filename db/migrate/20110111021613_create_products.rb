class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.integer :active
      t.integer :user_id
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
