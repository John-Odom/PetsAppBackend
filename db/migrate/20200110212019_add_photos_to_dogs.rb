class AddPhotosToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :photos, :json  
  end
end
