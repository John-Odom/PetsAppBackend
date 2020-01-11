class RemoveImage3FromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :image3, :string
  end
end
