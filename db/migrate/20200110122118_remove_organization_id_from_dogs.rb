class RemoveOrganizationIdFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :organization_id, :integer
  end
end
