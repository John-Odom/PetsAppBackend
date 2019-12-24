class AddImageToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :image, :string
  end
end
