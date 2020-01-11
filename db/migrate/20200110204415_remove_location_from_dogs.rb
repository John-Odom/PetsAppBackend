class RemoveLocationFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :location, :string
  end
end
