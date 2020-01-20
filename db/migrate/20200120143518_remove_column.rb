class RemoveColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :photos, :json
  end
end
