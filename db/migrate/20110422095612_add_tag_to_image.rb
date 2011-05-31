class AddTagToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :tag, :string
  end

  def self.down
    remove_column :images, :tag
  end
end
