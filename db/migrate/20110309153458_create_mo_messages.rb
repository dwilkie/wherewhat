class CreateMoMessages < ActiveRecord::Migration
  def self.up
    create_table :mo_messages do |t|
      t.text       :params       , :null => false
      t.references :mobile_number, :null => false
      t.timestamps
    end
    add_index :mo_messages, :params, :unique => true
  end

  def self.down
    drop_table :mo_messages
  end
end

