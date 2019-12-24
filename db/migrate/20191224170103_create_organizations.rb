class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :website
      t.string :name
      t.string :street
      t.integer :zip
      t.string :state
      t.string :city
      t.string :phone

      t.timestamps
    end
  end
end
