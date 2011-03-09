class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :postable, :polymorphic => true
      t.string :where, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end

