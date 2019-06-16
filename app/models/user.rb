class User < ApplicationRecord
  has_many :microposts
  validates :user, presence: true
  # validates FILL_IN, presence: true
end
