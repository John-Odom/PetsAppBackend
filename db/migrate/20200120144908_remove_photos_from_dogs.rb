class RemovePhotosFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :photos, :hstore
  end
end
