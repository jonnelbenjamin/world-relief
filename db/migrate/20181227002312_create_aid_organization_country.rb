class CreateAidOrganizationCountry < ActiveRecord::Migration[5.2]
  def change
    create_table :aid_organization_countries do |t|
      t.integer :country_id
      t.integer :aid_organization_id
    end
  end
end
