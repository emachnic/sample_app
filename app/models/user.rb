class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, presence: true, length: { maximum: 50 }
  validates :email,
            presence: true,
            length: {
              maximum: 255
            },
            format: {
              with: VALID_EMAIL_REGEX
            },
            uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  before_save { email.downcase! }

  has_secure_password

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrype::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
