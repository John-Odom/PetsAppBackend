class RemoveApiOrgIdFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :api_org_id, :integer
  end
end
