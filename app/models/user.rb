class User < ApplicationRecord
  has_secure_password
  has_one :profile, dependent: :destroy, class_name: Profile

  validates :name, presence: true, uniqueness: true
end
