class RemoveColorFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :color, :string
  end
end
