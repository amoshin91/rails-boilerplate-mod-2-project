class User < ApplicationRecord
	has_many :posts, dependent: :destroy
	has_many :follows, class_name: "Follow", foreign_key: 'follower_id', dependent: :destroy
	has_many :comments, through: :posts
end
