class CreateLots < ActiveRecord::Migration
  def up
    create_table :lots do |t|
      t.string   :name,             :limit => 64,       :null => false
      t.text     :description,      :limit => 2048
      t.string   :prepay,           :limit => 128
      t.string   :source,           :limit => 128
      t.string   :photo,

      t.integer  :user_id,

      t.timestamps
    end
  end

  def down
  end
end
