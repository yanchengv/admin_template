class Admin < ApplicationRecord
  validates :username, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  validates :password, presence: true
  has_secure_password


  # 返回指定字符串的哈希摘要
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
        BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
