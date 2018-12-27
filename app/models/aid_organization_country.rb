class AidOrganizationCountry < ApplicationRecord
  belongs_to :aid_organization
  belongs_to :country
end
