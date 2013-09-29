class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories, :id => false do |t|
      t.integer  :id,    :options => 'PRIMARY KEY'
      t.string   :name,  :limit => 64,       :null => false
      t.string   :photo, :null => true
      t.timestamps
    end
    add_index :categories, :id, :unique => true
  end

  def down
  end
end
