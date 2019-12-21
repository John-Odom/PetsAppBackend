class AddImage2ToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :image2, :string
  end
end
