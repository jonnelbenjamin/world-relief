class AidOrganizationsController < ApplicationController
  def index
    @aid_organizations = AidOrganization.distinct.pluck(:name)
  end

  def show

  end
end
