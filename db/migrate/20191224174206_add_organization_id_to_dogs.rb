class AddOrganizationIdToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :organization_id, :integer
  end
end
