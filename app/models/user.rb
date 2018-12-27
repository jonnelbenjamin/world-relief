class User < ApplicationRecord
  has_many :aid_organizations, through: :user_aid_organizations

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :age, numericality: {greater_than_or_equal_to: 18}
  validates :country, presence: true
  validates :profession, presence: true
end
