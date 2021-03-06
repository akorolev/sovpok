class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string   :name,             :limit => 64,       :null => false
      t.text     :description,      :limit => 1024
      t.integer  :value
      t.references  :user
      t.references  :lot
      t.references  :category
      t.timestamps
    end
    add_index :products, :user_id
    add_index :products, :lot_id
    add_index :products, :category_id

  end

  def down
  end
end
