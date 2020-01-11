class RemoveImage4FromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :image4, :string
  end
end
