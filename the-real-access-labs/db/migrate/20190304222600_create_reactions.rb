class CreateReactions < ActiveRecord::Migration[5.2]
  def change
    create_table :reactions do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :comment, foreign_key: true
      t.string :reaction

      t.timestamps
    end
  end
end
