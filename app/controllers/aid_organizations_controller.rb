class AidOrganizationsController < ApplicationController
  def index
    @aid_organizations = AidOrganization.all
  end
end
