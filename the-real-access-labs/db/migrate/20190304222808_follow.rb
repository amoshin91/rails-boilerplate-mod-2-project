class Follow < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.belongs_to :followed_id, foreign_key: true
      t.belongs_to :follower_id, foreign_key: true

      t.timestamps
  	end
  	add_index :follows, :follower_id
  	add_index :follows, :followed_id
  	add_index :follows, [:follower_id, :followed_id], unique: true
  end
end
