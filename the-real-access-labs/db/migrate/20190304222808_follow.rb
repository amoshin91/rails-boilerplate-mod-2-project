class Follow < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.belongs_to :followed_id, foreign_key: true
      t.belongs_to :follower_id, foreign_key: true

      t.timestamps
  	end
  end
end
