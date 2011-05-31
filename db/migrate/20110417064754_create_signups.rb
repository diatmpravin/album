class CreateSignups < ActiveRecord::Migration
  def self.up
    create_table :signups do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :confirm_password
      t.integer :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :signups
  end
end
