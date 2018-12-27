class User < ApplicationRecord
  has_many :aid_organizations, through: :user_aid_organizations
end
