class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name, :limit => 16, :null => false
      t.string :password, :null => false
      t.string :email, :limit => 32, :null => false
      t.text :about, :limit => 1024, :null => true
      t.string :avatar_photo, :null => true
      t.string :background_photo, :null => true
      t.string :background_photo, :null => true
      t.boolean :verified, :default => false
      t.datetime :registered, :null => false
      t.integer :positive, :default => 0
      t.integer :negative, :default => 0

      t.timestamps
    end
    add_index :users, :name, :unique => true
  end

  def down
  end
end
