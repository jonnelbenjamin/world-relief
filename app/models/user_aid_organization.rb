class UserAidOrganization < ApplicationRecord
  belongs_to :user
  belongs_to :aid_organization
end
