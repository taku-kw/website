class Songlist < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :songs
end