class User < ApplicationRecord
  has_and_belongs_to_many :songlists
  has_secure_password

  validates :name, presence: true, uniqueness: true, length: { in: 8..16 }
  validates :password, presence: true, length: { in: 8..16 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def self.guest
    find_or_create_by!(email: 'guest@mail.com') do |user|
      user.password = 'guest123'
      user.name = 'guest123'
      user.age = 20
    end
  end
end
