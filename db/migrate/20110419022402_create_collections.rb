class CreateCollections < ActiveRecord::Migration
  def self.up
    create_table :collections do |t|
      t.string :title
      t.string :image
      t.string :description
      t.date :upload_at

      t.timestamps
    end
  end

  def self.down
    drop_table :collections
  end
end
