class AddApiDogIdToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :api_dog_id, :integer
  end
end
