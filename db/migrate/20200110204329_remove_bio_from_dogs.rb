class RemoveBioFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :bio, :text
  end
end
