class User < ApplicationRecord
  has_and_belongs_to_many :songlists
  has_secure_password
end
