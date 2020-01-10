class AddOrgIdToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :api_org_id, :string
  end
end
