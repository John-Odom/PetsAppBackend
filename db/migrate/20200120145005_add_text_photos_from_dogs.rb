class AddTextPhotosFromDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :photos, :text
  end
end
