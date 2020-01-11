class AddApiDogIdToFavorites < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :api_dog_id, :integer
  end
end
