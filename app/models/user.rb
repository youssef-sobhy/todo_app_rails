class User < ApplicationRecord
  # Include default devise modules.
  has_many :tasks
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User

  validates :full_name,
            :user_name, presence: true
  validates_uniqueness_of :user_name
end
