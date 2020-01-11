class RemoveOrgIdFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :api_dog_id, :string
  end
end
