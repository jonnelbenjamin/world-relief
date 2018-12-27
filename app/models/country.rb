class Country < ApplicationRecord
  has_many :aid_organizations, through: :aid_organization_countries
end
