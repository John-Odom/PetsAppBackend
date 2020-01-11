class AddPetfinderOrganizationIdToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :organization_id, :string
  end
end
