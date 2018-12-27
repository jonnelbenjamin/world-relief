class AidOrganization < ApplicationRecord
  has_many :users, through: :user_aid_organizations
  has_many :countries, through: :aid_organization_countries
end
