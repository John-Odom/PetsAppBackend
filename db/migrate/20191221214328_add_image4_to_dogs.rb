class AddImage4ToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :image4, :string
  end
end
