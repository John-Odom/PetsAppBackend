class RemoveBreedFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :breed, :string
  end
end
