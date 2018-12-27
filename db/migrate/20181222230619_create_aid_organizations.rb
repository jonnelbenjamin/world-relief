class CreateAidOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :aid_organizations do |t|
      t.string :name
      t.string :country_of_field_work
      t.string :city_of_field_work
      t.integer :number_of_field_workers
      t.integer :monetary_need

      t.timestamps
    end
  end
end
