class Deliveries < ActiveRecord::Migration
  def up
    create_table :deliveries do |t|
      t.string   :name,             :limit => 64,       :null => false
      t.references  :user
      t.references  :lot
      t.timestamps
    end
  end

  def down
  end
end
