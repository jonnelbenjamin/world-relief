class CreateUserAidOrganization < ActiveRecord::Migration[5.2]
  def change
    create_table :user_aid_organizations do |t|
      t.integer :user_id
      t.integer :aid_organization_id
    end
  end
end
