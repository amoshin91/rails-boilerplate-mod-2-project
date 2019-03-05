class User < ApplicationRecord
	has_many :posts, dependent: :destroy
	has_many :follows, class_name: "Follow", foreign_key: 'follower_id', dependent: :destroy
	has_many :comments, through: :posts

  before_save { self.email = email.downcase }

  validates :first_name, presence: true, length: { maximum: 50 }

  validates :last_name, presence: true, length: { maximum: 50 }

  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }









end
