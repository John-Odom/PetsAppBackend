class RemoveImage2FromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :image2, :string
  end
end
