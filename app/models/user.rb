class User < ApplicationRecord
  include Clearance::User
  has_many :posts
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :surname, presence: true
end
