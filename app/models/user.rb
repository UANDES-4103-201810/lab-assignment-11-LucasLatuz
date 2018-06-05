class User < ApplicationRecord
  has_many :messages

  validates :username, length: { maximum: 20 }
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
