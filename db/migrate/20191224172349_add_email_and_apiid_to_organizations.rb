class AddEmailAndApiidToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :email, :string
    add_column :organizations, :apiid, :string
  end
end
